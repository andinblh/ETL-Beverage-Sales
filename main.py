from etl.extract import extract_data
from etl.transform import transform_data
from etl.load import load_data
import psycopg2
from config.db_config import DB_CONFIG

df_raw = extract_data("data/raw/beverage_sales.csv")
print("Jumlah data raw:", len(df_raw))

df_clean = transform_data(df_raw)
print("Jumlah data clean:", len(df_clean))

conn = psycopg2.connect(**DB_CONFIG)
load_data(df_clean, conn)
conn.close()

