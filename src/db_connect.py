import mysql.connector
import pandas as pd

conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="Tapas9692",
    database="salary_prediction"
)

query = "SELECT * FROM employees"

df = pd.read_sql(query, conn)

print(df)

conn.close()