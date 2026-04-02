# Housing Inequality in India: Socio-Religious Determinants of Access to Good Housing

**Course:** Advanced Training in Large-Scale Survey – NSS, NFHS and PLFS  
**Programme:** MA in Public Policy and Governance (2025–27)  
**Institution:** School of Public Policy and Governance, Tata Institute of Social Sciences, Hyderabad

---

## Authors

| Name | Roll Number |
|---|---|
| Abhishek Anand Sinha | H2025PPG001 |
| Anoushka Purohit | H2025PPG002 |
| Chaitanya Dandale | H2025PPG003 |
| Durga Sreedevi PR | H2025PPG005 |

---

## Research Question

> *Analyse the probability of getting access to good houses by socio-religious groups in India through logistic regression and suggest relevant public policies.*

---

## Dataset

- **Source:** NSSO 76th Round — Household Social Consumption: Housing (2018), Ministry of Statistics and Programme Implementation (MoSPI), Government of India
- **Unit of Analysis:** Household
- **Sample Size:** 4,66,426 observations (weighted)
- **Coverage:** Rural and Urban India

> ⚠️ The raw data file is **not included** in this repository as it is a government microdata file. See [`data/README_data.md`](data/README_data.md) for instructions on how to access and prepare it.

---

## Methodology

Three statistical techniques were used:

1. **Logistic Regression** — to estimate the odds of a household living in a "Good" structural condition house, across social and religious groups
2. **Cross-Tabulation** — to understand distribution of housing quality across groups and sectors (Rural/Urban)
3. **Descriptive Statistics / Mean Analysis** — to examine intersectional patterns across religion, social group, and tenurial status

### Variables

| Variable | Type | Description |
|---|---|---|
| `Good_House` | Binary (Dependent) | 1 = Good structural condition, 0 = Not Good |
| `Social_Group` | Categorical | ST, SC, OBC, Others (reference) |
| `Religion` | Categorical | Hindu (reference), Muslim, Christian, Sikh, Jain, Buddhist, Zoroastrian, Other |
| `Gender` | Categorical | Male, Female, Transgender (head of household) |
| `Sector` | Binary | 1 = Urban, 0 = Rural |
| `MPCE` | Continuous | Log of Average Monthly Per Capita Expenditure (used as proxy for income) |
| `Education` | Categorical | Highest education level of household head |
| `Tenurial_Status` | Categorical | Ownership status of dwelling |

---

## Key Findings

### Social Group (Reference: Others)

| Group | Odds Ratio | % Lower Odds | 95% CI |
|---|---|---|---|
| Scheduled Tribe (ST) | 0.367 | **74% lower** | 0.359 – 0.376 |
| Scheduled Caste (SC) | 0.399 | **61% lower** | 0.391 – 0.406 |
| Other Backward Classes (OBC) | 0.694 | **31% lower** | 0.684 – 0.704 |

### Religion (Reference: Hindu)

| Group | Odds Ratio | Direction |
|---|---|---|
| Muslim | 0.722 | **28% lower odds** |
| Christian | ~1.92 | Higher odds |
| Sikh | ~1.33 | Higher odds |
| Jain | ~2.81 | Higher odds |
| Buddhist | ~1.47 | Higher odds |
| Zoroastrian | ~3.59 | Higher odds |

### Rural–Urban Disparity

- Urban: **58.16%** of households have Good housing
- Rural: Only **34.68%** of households have Good housing

All results are statistically significant at p < 0.05 (p = 0.000).

---

## Policy Recommendations

1. **Group-specific housing policies** targeting SC, ST, and Muslim communities separately from general schemes
2. **Mandatory convergence** of housing grants (PMAY) with sanitation (Swachh Bharat), clean cooking fuel (Ujjwala Yojana), and electrification programmes
3. **Prioritised earmarking** of resources for SC/ST and religious minorities before general distribution — preventing dominant-group capture at the Gram Sabha level
4. **Incentivising incremental housing** (adding rooms to existing structures) as an alternative to new construction, especially in dense urban and slum areas

---

## Repository Structure

```
housing-inequality-india/
│
├── README.md
├── .gitignore
├── LICENSE
│
├── code/
│   └── housing_analysis.do        ← Stata do file for full analysis
│
├── data/
│   ├── README_data.md             ← How to access and prepare the NSSO data
│   └── codebook.md                ← Variable definitions and coding scheme
│
├── outputs/
│   ├── tables/                    ← Regression and cross-tab output tables
│   └── graphs/                    ← All visualisations
│
└── report/
    └── Housing_Inequality_Report.docx
```

---

## How to Reproduce the Analysis

1. Download the NSSO 76th Round data from MoSPI (see `data/README_data.md`)
2. Place the cleaned data file in the `data/` folder and rename it as specified in the do file
3. Open Stata and run `code/housing_analysis.do` from start to finish
4. Outputs will be saved to `outputs/tables/` and `outputs/graphs/`

**Software:** Stata (version used for analysis)  
**Packages required:** Standard Stata commands (`logistic`, `tab`, `mean`, `svy`)

---

## Data Ethics Note

The NSSO 76th Round microdata is anonymised, unit-level, and publicly available from the Government of India's MoSPI portal. No individual can be identified from this data. All analysis in this project uses survey weights to produce nationally representative estimates.

---

## License

This project is licensed under [CC BY 4.0](LICENSE) — you are free to use, share, and adapt with attribution.
