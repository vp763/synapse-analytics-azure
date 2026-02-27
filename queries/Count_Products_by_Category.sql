SELECT Category, COUNT(*) as total_count
FROM
    OPENROWSET(
        BULK 'https://datalake8x5c391.dfs.core.windows.net/files/product_data/products.csv',
        FORMAT = 'CSV',
        PARSER_VERSION='2.0',
        HEADER_ROW = TRUE
    ) AS [result]
GROUP BY Category
