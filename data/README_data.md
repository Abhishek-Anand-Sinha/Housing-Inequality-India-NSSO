# Data Access Instructions

## Why the data is not in this repository

The NSSO 76th Round microdata is a large government survey file (several hundred MB). Uploading it to GitHub would exceed file size limits and is also unnecessary since it is freely and publicly available from the official source below.

---

## How to Download the Data

1. Go to the **MoSPI Microdata Portal**: [https://mospi.gov.in/web/mospi/download-tables-data](https://mospi.gov.in/web/mospi/download-tables-data)
   - Alternatively: [https://microdata.gov.in](https://microdata.gov.in)

2. Navigate to:
   - **Survey:** NSS (National Sample Survey)
   - **Round:** 76th Round
   - **Subject:** Household Social Consumption — **Housing**
   - **Year:** 2018

3. Register/login if required (registration is free).

4. Download the **unit-level data** (household-level records) in `.dta` (Stata) or `.csv` format.

---

## Files You Will Need

After downloading, you should have the following schedule files. The relevant one for this analysis is:

| Schedule | Description | Used in this project |
|---|---|---|
| Schedule 1.0 | Household particulars | ✅ Yes |

---

## Preparing the Data

Once downloaded:

1. Place the `.dta` file inside this `data/` folder
2. Rename it to match what is referenced in the do file: `nsso_76_housing.dta`
3. Run the do file from `code/housing_analysis.do` — it will handle all cleaning, recoding, and variable creation from there

---

## Key Variables Used

See [`codebook.md`](codebook.md) for the full list of variables, their original NSSO codes, and how they were recoded for this analysis.

---

## Citation for the Data

> Ministry of Statistics and Programme Implementation (MoSPI), Government of India. (2018). *National Sample Survey, 76th Round: Household Social Consumption – Housing*. New Delhi: MoSPI.
