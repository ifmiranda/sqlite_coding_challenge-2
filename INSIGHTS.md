# SQLite Coding Challenge – Business Insights

Database: "bais_sqlite_lab.db"  
Tables used: "departments", "employees", "customers", "products", "orders","order_items"  
Files: "challenge.sql", "INSIGHTS.md"  

---

# Task 1 – Top 5 Customers by Total Spend

- Jacob Foster is the highest-spending customer, slightly ahead
     of Ethan Gomez. Both are significantly above the rest of the list.
   - The drop from the #2 customer ($8.2K) to the #3 ($5.4K) is large,
     showing that spending is highly concentrated among the top two.
   - Customers ranked 3–5 have nearly half the total spend of the top two,
     indicating a big gap between high-value and mid-value customers.
   - Revenue is top-heavy; focusing retention on Jacob and Ethan could 
     meaningfully impact overall revenue performance.

---

# Task 2 – Total Revenue by Product Category

- Electronics is the dominant category, producing more than double the revenue of Furniture.
- Grocery and Stationery generate very low revenue, indicating niche or low-demand product lines.
- The business relies heavily on Electronics and Furniture for overall sales performance.
- Category distribution suggests a strong focus on high-ticket items rather than low-cost consumer goods.


---

# Task 3 – Employees Above Their Department Average

- Each department has at least one employee earning above the department average.
- The largest salary gap occurs in Sales, where Alice earns $11,000 over the average.
- IT also has a notable spread, with Maya earning ~$6,700 above the department average.
- Salary differences suggest these employees may hold senior, high-performing, or specialized roles.
- Overall salary dispersion is relatively small within each department, indicating stable pay structures.

# Task 4 – Cities with the Most Gold Customers

- Tampa is the only city with Gold-level customers, making it the strongest market for loyalty engagement.
- All other cities have zero Gold customers, showing Tampa stands out as the primary location for high-value customer activity.
- Tampa may benefit from targeted loyalty rewards, exclusive offers, or premium services.


# Loyalty Distribution by City (Extension)

- Tampa contains all four Gold customers in the dataset, representing the entire top-tier loyalty base.
- Other cities have only one Silver or Bronze customer each, indicating low loyalty presence outside Tampa.
- Tampa is the hub of loyal, high-value customers, while the remaining cities present opportunities to build engagement.
- Targeted loyalty programs could help convert Silver and Bronze customers in other cities into higher-tier segments.

---
# Summary
- A few high-value customers drive a large part of total revenue.
- Certain product categories contribute most of the revenue, especially when focusing on Delivered orders.
- Some departments have several employees earning above the department average, which may reflect role seniority or skill level.
- Gold customers are concentrated in specific cities, and loyalty distribution by city can help target marketing and loyalty program efforts.
