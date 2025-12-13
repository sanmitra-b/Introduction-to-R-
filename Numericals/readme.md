# Hypothesis Testing – Solved Problems with R

This repository contains a collection of **statistical hypothesis testing problems** solved using **R**, covering proportions, means, variances, and paired comparisons.  
Each question includes:
- Problem statement  
- Data description  
- Statistical methodology  
- R implementation  
- Results, decision, and interpretation  

All solutions follow standard statistical testing procedures and are suitable for academic and applied data analysis contexts.

---

## 🛠 Tools & Technologies
- **R (Base R)**
- Statistical functions:  
  `t.test()`, `pnorm()`, `qnorm()`, `qchisq()`
- Hypothesis testing frameworks (Z, t, Chi-square)

---

## 📌 Contents

- Proportion tests (one-sided & two-sided)
- One-sample, two-sample, and paired t-tests
- Z-tests with known variance
- Chi-square tests for variance
- Real-world datasets and interpretations

---

##  Solved Questions

<details>
<summary><strong>Question 15 – Rural vs Urban Polio Proportions (Z-test)</strong></summary>

### Problem  
From samples of rural and urban children, test whether the proportion of polio-affected children is higher in rural areas at the 1% level.

### Method  
Two-proportion Z-test (one-sided)

### Result  
- Test statistic: *z ≈ 1.30*  
- p-value: *0.097*

### Decision  
Fail to reject H₀.

### Conclusion  
There is insufficient evidence at the 1% level to conclude that rural polio incidence is higher.

</details>

---

<details>
<summary><strong>Question 16 – Coastal vs Non-Coastal Student Performance (Two-Sample t-test)</strong></summary>

### Problem  
Test whether students from tsunami-affected coastal areas perform worse than others.

### Method  
Two-sample t-test (one-sided, equal variances)

### Result  
- *t ≈ −4.25*, p-value < 0.001

### Decision  
Reject H₀.

### Conclusion  
Students from coastal areas perform significantly worse at the 1% level.

</details>

---

<details>
<summary><strong>Question 17 – Effect of a Drug on Sleep (One-Sample t-test)</strong></summary>

### Problem  
Determine whether a drug increases hours of sleep at the 2% significance level.

### Method  
One-sample t-test (right-tailed)

### Result  
- Mean increase ≈ 2.7 hours  
- *t ≈ 17.3*

### Decision  
Reject H₀.

### Conclusion  
The drug significantly increases sleep duration.

</details>

---

<details>
<summary><strong>Question 18 – Gender Preference for CBCS System (Two-Proportion Z-test)</strong></summary>

### Problem  
Test whether male and female students differ in support for CBCS at the 2% level.

### Method  
Two-sided two-proportion Z-test

### Result  
- *z ≈ −1.10*, p-value ≈ 0.27

### Decision  
Fail to reject H₀.

### Conclusion  
No significant difference in preference between genders.

</details>

---

<details>
<summary><strong>Question 19 – Variance of Vegetable Mart Sales (Chi-Square Test)</strong></summary>

### Problem  
Test whether the variance of daily sales differs from Rs.100 at the 1% level.

### Method  
Chi-square test for single variance (two-sided)

### Result  
- *χ² ≈ 30.4*, df = 19

### Decision  
Fail to reject H₀.

### Conclusion  
The variance can reasonably be regarded as Rs.100.

</details>

---

<details>
<summary><strong>Question 20 – Battery Lifetime Variance Claim (One-Sided Chi-Square Test)</strong></summary>

### Problem  
Test the manufacturer’s claim that variance exceeds 6800 hours.

### Method  
Right-tailed chi-square test

### Result  
- *χ² ≈ 14.0* < critical value

### Decision  
Fail to reject H₀.

### Conclusion  
The claim of higher variance is not supported.

</details>

---

<details>
<summary><strong>Question 21 – Mean Life of Bulbs (One-Sample Z-test)</strong></summary>

### Problem  
Test whether the average bulb life is less than 1450 hours at the 1% level.

### Method  
One-sample Z-test (known σ)

### Result  
- *z ≈ −2.86*, p-value ≈ 0.002

### Decision  
Reject H₀.

### Conclusion  
Mean bulb life is significantly less than 1450 hours.

</details>

---

<details>
<summary><strong>Question 22 – Weekly Pickle Sales Claim (One-Sample t-test)</strong></summary>

### Problem  
Verify whether average weekly sales equal 120 at the 1% level.

### Method  
Two-sided one-sample t-test

### Result  
- *t ≈ −1.68*, p-value ≈ 0.13

### Decision  
Fail to reject H₀.

### Conclusion  
Salesman’s claim is consistent with the data.

</details>

---

<details>
<summary><strong>Question 23 – Birth Weight Variance Expectation (Chi-Square Test)</strong></summary>

### Problem  
Test whether birth weight variance exceeds 0.16 at the 5% level.

### Method  
Right-tailed chi-square test

### Result  
- *χ² ≈ 1.18*

### Decision  
Fail to reject H₀.

### Conclusion  
Observed variance is much lower than expected.

</details>

---

<details>
<summary><strong>Question 24 – Coaching Centre Effectiveness (Paired t-test)</strong></summary>

### Problem  
Test whether coaching significantly improves student scores at the 1% level.

### Method  
Paired t-test (one-sided)

### Result  
- Mean improvement ≈ 7.33  
- *t ≈ 3.87*, p-value < 0.01

### Decision  
Reject H₀.

### Conclusion  
Coaching leads to a statistically significant improvement.

</details>

---
