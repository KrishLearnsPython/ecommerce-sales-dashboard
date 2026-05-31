# E-Commerce Sales Performance Dashboard

A complete end-to-end data analytics project analysing 4 years of global retail sales data (5,009 orders, 2014–2017) to identify root causes of below-benchmark profitability and deliver quantified business recommendations.

Built as part of a structured Data Analytics portfolio. Every finding is grounded in data, every recommendation is quantified.

---

## Live Dashboard

[View the interactive Looker Studio Dashboard →](YOUR_LOOKER_STUDIO_LINK_HERE)

---

## Business Questions Answered

| # | Question | Method | Finding |
|---|---|---|---|
| 1 | Which months and years drive most revenue? | SQL time-series + line chart | Q4 spikes 40–60% above average every year |
| 2 | Which categories and sub-categories are unprofitable? | SQL GROUP BY + heatmap | Tables: -$17,725 profit on $206K revenue |
| 3 | Which states are underperforming? | SQL aggregation + geo map | California $75K profit vs Texas ~$20 profit |
| 4 | Are discounts helping or hurting margins? | Discount tier analysis | Every order above 20% discount loses money |
| 5 | Which customers are at risk of churning? | Python RFM segmentation | 158 At Risk customers hold $600K in revenue |

---

## Key Findings

- **Tables sub-category** generated $206,965 in revenue but lost $17,725 in profit — driven by sustained 30%+ discounting
- **Every discount above 20%** produces negative average profit per order, across all categories, consistently across all 4 years
- **158 At Risk customers** hold $600,839 in cumulative revenue and have near-identical purchase behaviour to the Loyal Customers segment — they are recoverable
- **Office Supplies leads on margin** at 17.04%, with Paper (43.39%), Labels (44.42%), and Art (42.27%) as the highest-margin sub-categories
- **Technology leads on profit** at $44,516 with a 13.49% margin and low average discounts

---

## Recommendations

1. **Cap Furniture discounts at 20%** — estimated +$22–25K profit recovery per year (immediate)
2. **Launch At Risk win-back campaign** — 158 customers, $150–180K recoverable revenue (2–4 weeks)
3. **Shift marketing to high-margin products** — +$35–55K profit improvement (1 quarter)

---

## Project Structure

```
ecommerce-sales-dashboard/
├── data/
│   ├── superstore.csv              ← raw dataset (5,009 orders)
│   └── rfm_segments.csv            ← RFM model output (793 customers, 6 segments)
├── sql/
│   ├── 01_monthly_revenue.sql      ← time-series + MoM growth rate
│   ├── 02_category_profit.sql      ← category and sub-category margins
│   ├── 03_regional_performance.sql ← state-level profit analysis
│   ├── 04_discount_analysis.sql    ← discount tier vs profit
│   └── 05_top_customers.sql        ← lifetime value ranking
├── notebooks/
│   ├── 01_eda_cleaning.ipynb       ← exploratory analysis + 5 charts
│   └── 02_rfm_segmentation.ipynb   ← RFM model + segment visualisation
├── dashboard/
│   └── screenshots/                ← PNG exports of all 4 Looker Studio pages
├── reports/
│   └── business_insights.md        ← 3-page written analysis + recommendations
├── requirements.txt
└── README.md
```

---

## Tech Stack

| Tool | Purpose |
|---|---|
| Python 3.11 | Data cleaning, EDA, RFM model |
| Pandas | Data manipulation and aggregation |
| Matplotlib / Seaborn | Exploratory visualisation |
| SQLite + DBeaver | SQL analysis (5 analytical queries) |
| Google Looker Studio | Interactive 4-page business dashboard |
| Git + GitHub | Version control and portfolio hosting |

---

## How to Run

```bash
git clone https://github.com/YOURUSERNAME/ecommerce-sales-dashboard
cd ecommerce-sales-dashboard
pip install -r requirements.txt
jupyter lab
```

Open `notebooks/01_eda_cleaning.ipynb` to start.

The dataset is included in `data/superstore.csv`. No API keys or external accounts required.

---

## Dashboard Pages

| Page | Content |
|---|---|
| Executive Overview | 4 KPI scorecards, revenue time-series, category bar chart, filters |
| Product Deep-Dive | Treemap by sub-category, heatmap table, sub-category profit bar chart |
| Regional Performance | City geo map, state profit bar chart, state filter |
| Customer Segments | RFM donut chart, revenue by segment bar, summary table |

---

## Dataset

**Sample Superstore** — a widely-used retail analytics dataset originally from Tableau.
Source: [Kaggle — Superstore Dataset](https://www.kaggle.com/datasets/vivek468/superstore-dataset-final)
Rows: 5,009 | Columns: 21 | Period: January 2014 – December 2017

---

*This project is part of a Data Analytics portfolio. Built May 2026.*