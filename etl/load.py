def load_data(df, conn, batch_size=10000):
    cursor = conn.cursor()

    query = """
    INSERT INTO sales (
        order_id, customer_id, customer_type, product,
        category, unit_price, quantity, discount,
        total_price, region, order_date
    ) VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)
    ON CONFLICT (order_id, product) DO NOTHING;
    """

    total_rows = len(df)
    print(f"Start loading {total_rows} rows...")

    for start in range(0, total_rows, batch_size):
        end = start + batch_size
        batch_df = df.iloc[start:end]

        data = [
            (
                row.Order_ID,
                row.Customer_ID,
                row.Customer_Type,
                row.Product,
                row.Category,
                row.Unit_Price,
                row.Quantity,
                row.Discount,
                row.Total_Price,
                row.Region,
                row.Order_Date
            )
            for _, row in batch_df.iterrows()
        ]

        cursor.executemany(query, data)
        conn.commit()

        print(f"Inserted rows {start} - {min(end, total_rows)}")

    cursor.close()
    print("Load completed!")
