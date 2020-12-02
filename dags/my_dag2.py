
from airflow import DAG
from airflow.hooks.base_hook import BaseHook
from airflow.operators.python_operator import PythonOperator
from airflow.operators.bash_operator import BashOperator
from airflow.utils.dates import days_ago, datetime, timedelta
import pandas as pd
import datetime
from sqlalchemy import create_engine




def my_func():
    data = pd.read_excel('/opt/completed_numberplate/numberplate.xls')
    df_new = data.rename(columns={'Unnamed: 0': 'kenteken','Unnamed: 1':'image'})
    print(data)

def rdwdatabase():
    engine = create_engine('postgresql://root:root@postgresdata:5432/root')

    sqlquery = """
    SELECT *
    FROM
    myschema.rdw
    """
    frame = pd.read_sql(sqlquery, engine)
    timestamp = datetime.datetime.now()
    frame ['timestamp'] = timestamp
    print(frame)

def dashboard_database(): 
    data = pd.read_excel('/opt/completed_numberplate/numberplate.xls')
    df_new = data.rename(columns={'Unnamed: 0': 'kenteken','Unnamed: 1':'image'})

    engine = create_engine('postgresql://root:root@postgresdata:5432/root')

    sqlquery = """
    SELECT *
    FROM
    myschema.rdw
    """
    frame = pd.read_sql(sqlquery, engine)
    timestamp = datetime.datetime.now() 
    frame ['timestamp'] = timestamp
    print(frame)

    dashboard = frame.loc[frame['kenteken'].isin(df_new.kenteken)]
    dashboard.to_sql(con=engine,schema='myschema', name='dashboard_table',if_exists='replace')
    print (dashboard)  
    


# initializing the default arguments that we'll pass to our DAG
default_args = {
    'owner': 'airflow',
    'start_date': days_ago(5),
    'email': ['airflow@mairflow.com'],
    'email_on_failure': False,
    'email_on_retry': False,
    'retries': 1,
    'retry_delay': timedelta(minutes=5),
}

docker_dag = DAG(
    'docker_dag',
    default_args=default_args,
    description='Python DAG',
    schedule_interval=timedelta(days=1),
)

t1 = BashOperator(
    task_id='run_main',
    bash_command='cd /opt/completed_numberplate && python3 Main.py',
    dag=docker_dag,
)

t2 = PythonOperator(
    task_id='read_data_csv',
    python_callable=my_func,
    dag=docker_dag,
)

t3 = PythonOperator(
    task_id='read_data_rdw',
    python_callable=rdwdatabase,
    dag=docker_dag,
)

t4 = PythonOperator(
    task_id='compare_data',
    python_callable=dashboard_database,
    dag=docker_dag,
)

t5 = BashOperator(
    task_id='end',
    bash_command='echo Completed',
    dag=docker_dag,
)

t1 >> t2 >> t3 >> t4 >> t5

#run_main.set_downstream(end)
