# 🏏 IPL Data Analysis Dashboard

## 📌 Overview

This project performs end-to-end analysis of IPL (Indian Premier League) cricket data to uncover insights about player performance and team success using SQL, Excel, and Tableau.

---

## 🛠 Tools & Technologies

* MySQL – Data storage and querying
* Excel – Data exploration and pivot analysis
* Tableau – Interactive dashboard visualization

---

## 📂 Dataset

* `deliveries.csv` – Ball-by-ball IPL data
* `matches.csv` – Match-level IPL data

---

## ⚙️ Workflow

1. Imported raw datasets into MySQL
2. Performed data validation and preprocessing during import
3. Wrote SQL queries to analyze:

   * Top batsmen (total runs)
   * Top bowlers (wickets taken)
   * Team wins
4. Used Excel for intermediate analysis and pivot tables
5. Built an interactive dashboard in Tableau

---

## 📊 Key Insights

* Virat Kohli is the highest run scorer in IPL history
* Yuzvendra Chahal is among the top wicket takers
* Mumbai Indians are the most successful team

---

## 📷 Dashboard Preview

![Dashboard](images/dashboard.png)

---

## 📊 Visualizations

### 🔹 Top Batsmen

![Top Batsmen](images/top_batsmen.png)

### 🔹 Top Bowlers

![Top Bowlers](images/top_bowlers.png)

### 🔹 Team Wins

![Team Wins](images/team_wins.png)

---

## 📁 Project Structure

```
IPL-Data-Analysis/
├── data/
│   └── raw/
│       ├── deliveries.csv
│       └── matches.csv
│
├── sql/
│   ├── schema.sql
│   ├── data_import.sql
│   └── analysis_queries.sql
│
├── excel/
│   └── ipl_analysis.xlsx
│
├── tableau/
│   └── ipl_dashboard.twbx
│
├── images/
│   ├── dashboard.png
│   ├── top_batsmen.png
│   ├── top_bowlers.png
│   └── team_wins.png
│
├── README.md
└── .gitignore
```

---

## 🚀 How to Run

1. Import CSV files into MySQL
2. Execute SQL scripts from `/sql` folder
3. Open Tableau file from `/tableau`
4. Explore the dashboard

---

## 👤 Author

Ajay
