## Main Folder Structure
```sportsGameAnalysis/
├── src/
│   ├── app/      streamlit application
│   ├── queries/  sql queries
│   ├── scripts/  python scripts/codes
├── .env.example
├── .gitignore
├── README.md
└── requirements.txt
```

## Competition Module (author: Akanksha Yadav)

This module extracts competition data from the SportRadar Tennis API.

### API Endpoint
https://api.sportradar.com/tennis/trial/v3/en/competitions.json

### Steps to Run
1. Add API key to `.env`
2. Run:
   python insert_data.py

### Output
- SQLite database: competition.db
- Tables: categories, competitions

### Folder Structure
```competition_module/
├── src/
│   ├── app/              streamlit application
│   ├── queries/
│   │  └── db_schema.sql  sql queries
│   ├── scripts/
│   │  ├── fetch_competitions.py
│   │  ├── parse_competitions.py
│   │  └── insert_data.py  
├── .env.example
├── .gitignore
├── README.md
└── requirements.txt
```

## Complexes & Venues Module (author: Shrawani)

## Competitor Rankings & Analytics Module (author: Nirmaldas Patel)

## Streamlit Application & Dashboard Module (author: Manasvi Shetty)