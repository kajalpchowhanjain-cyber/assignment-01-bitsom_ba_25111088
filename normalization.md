
## Anomaly Analysis

### Insert Anomaly
In the flat dataset, new product or customer data cannot be inserted independently without creating an order.

Example: A new product cannot be added unless an order exists for it.

---

### Update Anomaly
Customer and product information is repeated across multiple rows, leading to inconsistency when updates are not applied everywhere.

Example: If a customer's city changes, it must be updated in multiple rows.

---

### Delete Anomaly
Deleting an order can remove important information about a product or customer.

Example: If a product appears in only one order, deleting that row removes all information about that product.

---

## Normalization Justification

Keeping all data in a single table may seem simple but leads to redundancy and inconsistency. In the dataset, customer details such as name and city are repeated multiple times, increasing storage usage and making updates error-prone.

Product information is also duplicated across rows. If a product’s price changes, updating it across all rows can lead to inconsistencies.

By normalizing into separate tables such as customers, orders, products, and order_items, redundancy is reduced and data integrity is maintained. Each piece of information is stored only once, and relationships are maintained using foreign keys.

Although normalization introduces joins, it improves scalability, consistency, and maintainability. Therefore, normalization is essential and not over-engineering.
