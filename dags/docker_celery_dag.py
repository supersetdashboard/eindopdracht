import datetime as dt

from airflow import DAG
from airflow.operators.bash_operator import BashOperator
from airflow.operators.postgres_operator import PostgresOperator

default_args = {
        'owner': 'airflow',
        'start_date': dt.datetime(2020, 1, 1, 11, 30, 00),
        'retries': 0
}

with DAG('docker_celery_dag',
        default_args=default_args,
        schedule_interval='*/5 * * * *',
        catchup=False) as dag:

        opr_create_schema = PostgresOperator(task_id="create_schema_task", sql="CREATE SCHEMA IF NOT EXISTS docker_celery;", autocommit=True, database='airflow')    
        opr_create_table = PostgresOperator(task_id="create_table_task", sql="CREATE TABLE IF NOT EXISTS docker_celery.task(id VARCHAR(50) PRIMARY KEY, timestamp TIMESTAMP);", autocommit=True, database='airflow')
        opr_show_table = PostgresOperator(task_id="create_show_table", sql="select * from docker_celery;", autocommit=True, database='airflow')
        print(opr_show_table)