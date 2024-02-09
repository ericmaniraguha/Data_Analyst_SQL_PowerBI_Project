**README**

**Data Analysis using SQL and PowerBI**

This README provides instructions for downloading, installing, and configuring SQL Server Management Studio (SSMS), connecting databases, and performing data analysis using SQL and PowerBI.

**Download, Installation, and Configuration of SQL Server Management Studio**

1. Download SQL Server Management Studio from the official Microsoft website: [SQL Server Management Studio](https://docs.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms).

2. Follow the installation instructions provided by Microsoft.

3. After installation, open SQL Server Management Studio and configure it as per your requirements.

**Connect Databases**

1. Download the AdventureWorks databases from [Microsoft SQL Server Samples GitHub Repository](https://github.com/microsoft/sql-server-samples/releases/tag/adventureworks).

2. Choose the appropriate database version based on your needs:
   - **Data Warehouse:** AdventureWorksDW2019.bak
   - **Lightweight:** AdventureWorksLT2019.bak

3. Restore the database backup files in your SQL Server instance using SQL Server Management Studio.

**Update Data**

1. Run the script `Update_AdventureWorksDW_Data.sql` provided in this repository.

2. The script updates the date columns for the AdventureWorksDW database with recent dates and inserts new dates in the date dimension.

3. It uses the current year as the last year for the data in the Adventure Works database.

4. The script deletes leap year records from FactCurrencyRate and FactProductInventory to avoid constraint issues.

5. For example, if the current year is 2021, the data after running the script will be from 2017 to 2021.

**Author**

- **David Alzamendi** ([Tech Talk Corner](https://techtalkcorner.com))

**Date**

- **19/11/2020**

**Connect Databases to SQL Server**

After running `Update_AdventureWorksDW_Data.sql`, both databases (AdventureWorksDW and AdventureWorksLT) will be connected to SQL Server and ready for analysis.

**Dataset Used**

- AdventureWorksDW2019.bak: Data Warehouse for data warehousing workloads.
- AdventureWorksLT2019.bak: Lightweight dataset, a pared-down version of the OLTP sample.

**Technical Task**

For detailed technical tasks and instructions, refer to the provided script `Update_AdventureWorksDW_Data.sql`.

**Note:** Ensure that you have appropriate permissions and configurations in SQL Server Management Studio to perform these tasks effectively.
