// OP1: insertMany() — insert all 3 documents
db.products.insertMany([
  {
    name: "iPhone 15",
    category: "Electronics",
    price: 80000,
    specs: {
      warranty: "1 year",
      battery: "4000mAh",
      voltage: "220V"
    }
  },
  {
    name: "Men T-Shirt",
    category: "Clothing",
    price: 1200,
    sizes: ["S", "M", "L", "XL"],
    material: "Cotton",
    brand: "Nike"
  },
  {
    name: "Milk Packet",
    category: "Groceries",
    price: 60,
    expiry_date: "2024-12-30",
    nutrition: {
      fat: "3%",
      protein: "3.2g",
      calcium: "120mg"
    }
  }
]);

// OP2: find Electronics with price > 20000
db.products.find({
  category: "Electronics",
  price: { $gt: 20000 }
});

// OP3: find Groceries expiring before 2025-01-01
db.products.find({
  category: "Groceries",
  expiry_date: { $lt: "2025-01-01" }
});

// OP4: updateOne() — add discount_percent
db.products.updateOne(
  { name: "iPhone 15" },
  { $set: { discount_percent: 10 } }
);

// OP5: createIndex() — index on category
db.products.createIndex({ category: 1 });

// Reason:
// Index on category improves query performance when filtering products by category,
// especially for large datasets.
