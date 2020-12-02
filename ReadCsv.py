import pandas as pd
from sqlalchemy import create_engine
from datetime import date


engine = create_engine('postgresql://root:root@127.0.0.1:5432/root')

sqlquery = """
    SELECT *
    FROM
    myschema.rdw
"""
frame = pd.read_sql(sqlquery, engine)
timestamp = date.today() 
frame ['timestamp'] = timestamp
print(frame)
