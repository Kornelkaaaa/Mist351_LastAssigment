# Task4
# 🏊 Assignment 4: Competitive Swimming Team Database

A comprehensive SQL database to support the operations and grant evaluation of European water sports teams, built around athlete performance, facility logistics, and donor tracking.

## 📘 Project Context

This project simulates a real-world database for the **Foundation “Yes For Water”**, which funds **water sports teams in Europe**. To award grants effectively, the foundation must collect and analyze data on teams, athletes, facilities, nutrition, and donations.

### ✅ Business Rules:

- Each **team** has a unique ID, name, and may compete in **multiple disciplines** (e.g., swimming, diving, water polo).
- A **team can use only one facility**, while a **facility can host many teams**.
- Every **facility** has a unique number, address, city, country, and a capacity.
- Each **team has one nutritionist**. Nutritionists cannot be coaches and **only serve one team**, but can have **multiple areas of specialization**.
- A **team can have multiple athletes**, but an **athlete can belong to only one team**.
- Athletes have a unique ID, first and last names, height in cm, and GPA.
- Every athlete **must swim at least one style**, chosen from **fly, backstroke, breaststroke, freestyle**. Athletes **may swim multiple strokes**.
- Stroke-specific performance details:
  - **Flyers**: arm range (cm)
  - **Backstrokers**: underwater kicks count
  - **Breastrokers**: disqualifications over the season
  - **Freestylers**: VO2Max + either **distance** (1-mile time) or **sprint** (50-yard time), but **not both**
- Each **donor** has a unique ID and name, and can donate to multiple teams.
- **Donations** include amount and date; a donor can donate to a given team only once per day.

---

## 📁 Project Structure

- `schema.sql` – all `CREATE TABLE` statements
- `data_insert.sql` – example data inserts using real and famous names
- `queries.sql` – assignment queries (7 tasks)
- `README.md` – project documentation

---

## 🧪 SQL Query Highlights

1. **Joins & Filtering** – List athletes with GPA below 3.50 and their team and facility.
2. **Aggregation** – Show average donation amount for a specific donor.
3. **Right Join** – Match team disciplines even when a team has none.
4. **Group By** – Count number of athletes per team.
5. **Group By + Having** – List donors with total donations over $555.
6. **Nested Query** – Show teams practicing at above-average capacity facilities.
7. **Advanced Filtering** – Show teams with average GPA above overall average using `LEFT JOIN`, `GROUP BY`, and `HAVING`.

---

## 🔧 Technologies Used

- **SQL** (MySQL 8+)
- Compatible with:
  - MySQL Workbench
  - DBeaver
  - phpMyAdmin
  - CLI tools

---

## 🚀 How to Run

1. Clone the repository:
   ```bash
   git clone https://github.com/Kornelkaaaa/Task4.git
   cd Task4

2. Launch MySQL and run
  ```bash
  SOURCE schema.sql;
  SOURCE data_insert.sql;
  SOURCE queries.sql;
```
3. Modify and test additional queries as needed!

---

## 👩‍💻 Author
Kornelia Buszka

---

## 📜 License
For academic and nonprofit use. Attribution appreciated.

Would you like this uploaded as a `.md` file or zipped with the rest of the project structure (`schema.sql`, etc.)? I can generate everything ready for GitHub.


