# 📺 Netflix TV Shows — Data Analytics Project

A full end-to-end data analytics project analyzing 50 popular TV shows to uncover insights on content quality, audience targeting, and Netflix availability — with actionable business recommendations.

---

## 📌 Overview

This project simulates a real-world data analytics workflow. Starting from a raw dataset, the data was cleaned and explored in Python, analyzed with SQL in PostgreSQL, and visualized in an interactive Power BI dashboard. Findings were then packaged into a business report and a professional presentation.

---

## 📂 Dataset


| Records | 50 TV Shows |
| Features | 5 columns |
| Missing Values | None |
| Source | Curated list of popular TV shows |

Key Columns:
- show_name — Title of the TV show
- release_year — Year the show was released
- age_rating — Audience age classification
- imdb_rating — IMDb score
- netflix_available — Whether the show is on Netflix (Yes/No)

---

## 🛠️ Tools Used

| Tool | Purpose |
|------|---------|
| Python (pandas) | Data loading, cleaning, EDA |
| PostgreSQL | SQL queries and performance analysis |
| Power BI | Interactive dashboard |
| Gamma | Presentation design |
| Microsoft Word | Project report |

---

## 🔄 Project Steps

### 1. Data Loading & EDA (Python)
- Imported dataset using pandas
- Explored structure with df.info() and df.describe()
- Verified no missing or null values

### 2. Data Cleaning & Feature Engineering
- Standardized column names to snake_case
- Created age_rating_tier by mapping age ratings into grouped categories
- Created release_era by binning release years into time periods

### 3. Database Integration
- Connected Python to a PostgreSQL server
- Loaded the cleaned DataFrame into a SQL table for structured querying

### 4. SQL Analysis (PostgreSQL)
Ran 7 business-focused queries:
1. Netflix vs. non-Netflix show count
2. Top release era by average IMDb rating
3. Top 2 shows ranked by IMDb rating and age tier
4. Age tier ranked by average IMDb performance
5. Age tier + era combinations with most Netflix shows
6. High-performing shows (IMDb > 8.5) not on Netflix
7. Overall value ranking across all dimensions

### 5. Power BI Dashboard
- Built an interactive dashboard with filters by era, age tier, and rating
- Visualized Netflix availability, top performers, and content gaps

### 6. Report & Presentation
- Summarized findings in a structured Word report
- Created a clean business presentation using Gamma

---

## 📊 Dashboard

> Built in Power BI — filters include release era, age rating tier, and IMDb score range.

Key visuals:
- Netflix vs. non-Netflix distribution
- IMDb rating by release era
- Top-performing shows by age tier
- Content gap analysis (high-rated, not on Netflix)

---

## 💡 Results & Recommendations

| # | Recommendation | Insight |
|---|---------------|---------|
| 1 | License high-rated shows | IMDb 8.5+ titles not on Netflix are acquisition opportunities |
| 2 | Focus on modern-era content | Modern shows consistently score highest in ratings |
| 3 | Expand family content | Strong ratings + drives household subscriptions |
| 4 | Fill content gaps | High-demand age/era combos are underrepresented |
| 5 | Personalize marketing | Different age tiers respond to different content |
| 6 | Improve recommendations | A composite IMDb + era + tier score predicts viewer preferences |

---

## ▶️ How to Run

### Requirements
Python 3.x
pandas
sqlalchemy
psycopg2
PostgreSQL


### Steps

1. Clone the repository
  
   git clone https://github.com/sabrineelwan/Netflix-TV-Shows-Analysis
   
2. Install dependencies
  
   pip install pandas sqlalchemy psycopg2
   
3. Run the Python script
  
   python analysis.py
   
4. Open PostgreSQL and run the SQL queries from /sql/queries.sql

5. Open Power BI and connect to your PostgreSQL database to load the dashboard

    ## 📁 Project Structure
   netflix-tv-analysis/
│
├── data/
│   └── netflix_tv_shows.csv
│
├── python/
│   └── analysis.py
│
├── sql/
│   └── queries.sql
│
├── dashboard/
│   └── netflix_dashboard.pbix
│
├── report/
│   └── Netflix_TV_Shows_Analysis_Report.docx
│
└── README.md

   

---

## 📁 Project Structure
