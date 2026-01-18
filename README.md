# Beverage Sales ETL Pipeline

## Deskripsi
Project ini merupakan pipeline ETL (Extract, Transform, Load) untuk mengolah data penjualan minuman dari file CSV ke dalam database PostgreSQL. Data yang telah diproses kemudian disajikan melalui SQL View agar siap digunakan untuk analisis penjualan.

---

## Tech Stack
- Python (pandas, psycopg2)
- PostgreSQL
- pgAdmin
- SQL
- VS Code

---

## Alur ETL
1. Extract – Mengambil data penjualan dari file CSV  
2. Transform – Membersihkan dan menyiapkan data  
3. Load – Menyimpan data ke PostgreSQL  
4. Serve – Menyediakan data terolah melalui SQL View  

---

## Output Analisis
- Total penjualan harian
- Total penjualan bulanan
- Perbandingan penjualan B2B vs B2C
- Total penjualan per region
- Top produk

(Data disediakan menggunakan SQL View)

---

## Struktur Folder
```text
etl-beverage-sales/
├── etl/
│   ├── extract.py
│   ├── transform.py
│   └── load.py
├── sql/
│   ├── create_table.sql
│   ├── validation_query.sql
│   ├── create_view.sql
│   └── analysis_query.sql
├── config/
│   └── db_config.py
├── main.py
└── README.md
```
