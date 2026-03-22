## Architecture Recommendation

For a fast-growing food delivery startup handling diverse data such as GPS logs, customer reviews, transactions, and images, a Data Lakehouse architecture would be the most suitable choice.

Firstly, the data involved is highly diverse and includes structured data (transactions), semi-structured data (reviews), and unstructured data (images and GPS logs). A Data Lakehouse allows storing all these formats in a single unified system, unlike a traditional data warehouse which is optimized only for structured data.

Secondly, a Data Lakehouse combines the scalability and flexibility of a data lake with the performance and reliability of a data warehouse. This enables efficient storage of large volumes of raw data while still supporting analytical queries and reporting.

Thirdly, it supports real-time and batch processing. GPS logs and user interactions can be streamed into the system, while historical data can be analyzed for trends and insights. This is essential for a fast-growing startup that needs both operational and analytical capabilities.

Additionally, modern lakehouse systems provide features like ACID transactions, schema enforcement, and data versioning, which improve data reliability and governance.

Therefore, a Data Lakehouse offers the best balance of flexibility, scalability, and analytical performance, making it ideal for handling the startup’s diverse and growing data needs.
