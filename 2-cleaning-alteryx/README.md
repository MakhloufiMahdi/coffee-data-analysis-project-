# 🧼 Data Cleaning avec Alteryx
As part of the data cleaning process for the Coffee Shop dataset, I first used the Input Data tool to establish a direct connection to the source file in CSV format. Using the Select tool, I converted the storeID and productID fields to integer type (Int) to ensure typological consistency, and I deselected irrelevant columns identified as "unknown". The Data Cleansing tool was applied to normalize string fields by removing unnecessary spaces, tabs, line breaks, as well as leading and trailing whitespace. A new column named Total Amount was generated using the Formula tool by multiplying the transaction quantity (transaction qty) by the unit price (unit price). The Sort tool was then used to arrange the records in ascending order by transaction date and transaction time. Finally, the cleaned and enriched data was exported to a SQL Server database via the Output Data tool for further analytical use.
<img width="14509" height="70" alt="image" src="https://github.com/user-attachments/assets/16b1c9a4-b144-42ca-9206-5511f90d1ac8" />


## Result
Cleaned file ready for ingestion into a SQL database.
