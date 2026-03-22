## ETL Decisions

### Decision 1 — Date Standardization
Problem: The raw dataset contained inconsistent date formats such as DD-MM-YYYY and MM/DD/YYYY, which can cause issues in analysis and grouping.

Resolution: All dates were converted into a standard YYYY-MM-DD format and stored in the dim_date table with separate fields for month and year.

---

### Decision 2 — Handling Missing Values
Problem: Some rows had NULL or missing values in important fields like product category and store location.

Resolution: Missing values were either filled with default values (e.g., "Unknown") or excluded if they were not useful for analysis, ensuring data quality in the warehouse.

---

### Decision 3 — Category Normalization
Problem: Product categories were inconsistent (e.g., "electronics", "Electronics", "ELECTRONICS").

Resolution: All category values were standardized to a consistent format (e.g., "Electronics") before loading into the dim_product table to ensure accurate aggregation and reporting.
