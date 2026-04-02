# Codebook — NSSO 76th Round Housing Analysis

This file documents all variables used in the analysis, including their original NSSO column names, value labels, and any recoding done for this project.

---

## Dependent Variable

### `Good_House` (Binary)
Constructed from the NSSO variable for **Condition of Structure of Dwelling**.

| Value | Label | Original NSSO Code |
|---|---|---|
| `1` | Good (Pucca / sound structure) | 1 |
| `0` | Not Good (Satisfactory or Bad) | 2, 3 (merged) |

> Satisfactory and Bad categories were collapsed into a single "Not Good" category for the binary logistic regression.

---

## Independent Variables

### `Social_Group` (Categorical)
Original NSSO variable for the social group of the household head.

| Code | Label | Reference Category |
|---|---|---|
| `1` | Scheduled Tribe (ST) | No |
| `2` | Scheduled Caste (SC) | No |
| `3` | Other Backward Classes (OBC) | No |
| `4` | Others (Forward Caste / General) | **Yes (reference)** |

---

### `Religion` (Categorical)
Original NSSO variable for the religion of the household head.

| Code | Label | Reference Category |
|---|---|---|
| `1` | Hinduism | **Yes (reference)** |
| `2` | Islam (Muslim) | No |
| `3` | Christianity | No |
| `4` | Sikhism | No |
| `5` | Jainism | No |
| `6` | Buddhism | No |
| `7` | Zoroastrianism | No |
| `9` | Others | No |

---

### `Gender` (Categorical)
Sex of the household head.

| Code | Label |
|---|---|
| `1` | Male |
| `2` | Female |
| `3` | Transgender |

---

### `Sector` (Binary)
Sector of residence.

| Code | Label |
|---|---|
| `1` | Rural |
| `2` | Urban |

---

### `MPCE` (Continuous — Log transformed)
Average Monthly Per Capita Expenditure (in ₹), used as a proxy for household income since the NSSO housing schedule does not collect income directly.

**Transformation applied:** `log_mpce = log(MPCE)`

---

### `Education` (Categorical)
Highest level of education of the household head, as per NSSO education codes.

| Code | Label |
|---|---|
| `01` | Not literate |
| `02` | Literate without formal schooling |
| `03` | Below primary |
| `04` | Primary |
| `05` | Middle |
| `06` | Secondary |
| `07` | Higher secondary |
| `08` | Diploma / Certificate (non-technical) |
| `09` | Diploma / Certificate (technical) |
| `10` | Graduate (non-technical) |
| `11` | Graduate (technical) |
| `12` | Post-graduate and above |

---

### `Tenurial_Status` (Categorical)
Tenurial (ownership) status of the dwelling unit.

| Code | Label |
|---|---|
| `1` | Owned |
| `2` | Hired / Rented |
| `3` | No-cost rent (employer, family, etc.) |
| `9` | Others |

---

## Survey Weights

All descriptive statistics and cross-tabulations in this analysis use **multiplier weights** (`hhwt` or equivalent) provided in the NSSO dataset to produce nationally representative estimates.

For logistic regression, weights were applied using Stata's `svy` prefix or the `[pweight=]` option.

---

## Sample Size

| Filter | N |
|---|---|
| Total observations used | **4,66,426** |
| Missing values dropped | As per do file |
