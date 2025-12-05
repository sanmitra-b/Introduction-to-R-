# Introduction-to-R

# R Programming & Statistical Analysis Portfolio

This repository contains a comprehensive collection of R programming lab reports and practical components, ranging from basic vector/matrix operations to advanced hypothesis testing.

---

## 📂 Part 1: Foundations & Practical Components

<details>
<summary><strong>Lab 1: Vector/Matrix Operations & Sampling Error (mtcars)</strong></summary>

### 1. Overview
* **Dataset:** `mtcars`
* **Objective:** Perform vector/matrix arithmetic and calculate Sampling/Standard Error for different sample sizes.

### 2. Methodology & Code
* **Vector Ops:** Addition, subtraction, multiplication, and division of random samples.
* **Matrix Ops:** Creation of $2 \times 2$ and $3 \times 3$ matrices, element-wise multiplication vs. matrix multiplication (`%*%`).
* **Error Calculation:**
    * *Sampling Error:* $Z \times \frac{\sigma}{\sqrt{n}}$
    * *Standard Error:* $\frac{s}{\sqrt{n}}$

### 3. Results

> **Interpretation:**
> * The Sampling Error remained constant (0.724) as both samples had $n=7$.
> * **Sample 1** had a lower Standard Error (0.202), making it more representative than **Sample 2** (SE = 0.287).

</details>

<details>
<summary><strong>CIA Component: Matrix & Error Analysis (Pressure Dataset)</strong></summary>

### 1. Data Description
* **Dataset:** `pressure` (Variable: `pressure` column).
* **Tasks:**
    1. Create $3 \times 3$ matrices for the first 9 and last 9 observations.
    2. Analyze Sampling Error across increasing sample sizes ($n=10, 15, 18$).

### 2. Results
* **Matrix Multiplication ($M_1 \times M_2$):** Performed on subsets of the data.
* **Error Analysis by Sample Size:**

| Sample Size (n) | Sampling Error | Standard Error |
| :--- | :--- | :--- |
| **n = 10** | 139.22 | 60.32 |
| **n = 15** | 113.67 | 56.79 |
| **n = 18** | 103.77 | 54.45 |


> **Conclusion:**
> As sample size increases, both Sampling Error and Standard Error **decrease**. Sample 3 ($n=18$) is the most statistically stable.

</details>

---

## 📂 Part 2: Statistical Hypothesis Testing

<details>
<summary><strong>Lab 2: Z-Test (One Sample)</strong></summary>

* **Test:** Z-test for population mean.
* **Dataset:** `mtcars` (mpg).
* **Hypothesis:** $H_0: \mu = 20$ (with $\sigma=6$).
* **Result:** P-value = 0.9319.
* **Decision:** Fail to reject $H_0$. The fuel efficiency is consistent with 20 mpg.
    
![Lab 2 Output](assets/lab2-output.png)

</details>

<details>
<summary><strong>Lab 3: One-Sample t-Test</strong></summary>

* **Test:** t-test for population mean (unknown $\sigma$).
* **Dataset:** `iris` (setosa sepal length).
* **Hypothesis:** $H_0: \mu = 5.0$.
* **Result:** P-value = 0.9047.
* **Decision:** Fail to reject $H_0$. Setosa sepal length averages approximately 5.0 cm.

![Lab 3 Output](assets/lab3-output.png)

</details>

<details>
<summary><strong>Lab 4: Two-Sample Independent t-Test</strong></summary>

* **Test:** Welch Two Sample t-test.
* **Dataset:** `iris` (Versicolor vs. Virginica).
* **Hypothesis:** $H_0: \mu_1 = \mu_2$.
* **Result:** P-value = $1.866 \times 10^{-7}$.
* **Decision:** **Reject $H_0$.** Virginica has a significantly larger average sepal length.

![Lab 4 Output](assets/lab4-output.png)

</details>

<details>
<summary><strong>Lab 5: Paired t-Test</strong></summary>

* **Test:** Paired t-test (Dependent samples).
* **Dataset:** `sleep` (Drug 1 vs. Drug 2 on same patients).
* **Hypothesis:** $H_0: \mu_{diff} = 0$.
* **Result:** P-value = 0.0028.
* **Decision:** **Reject $H_0$.** Drug 2 is significantly more effective, providing ~1.58 hours more sleep.

![Lab 5 Output](assets/lab5-output.png)

</details>

<details>
<summary><strong>Lab 6: Chi-Square Test for Variance</strong></summary>

* **Test:** Test for single variance.
* **Hypothesis:** $H_0: \sigma^2 = 64$.
* **Result:** P-value = 0.1164.
* **Decision:** Fail to reject $H_0$. The variability is statistically compatible with 64.

![Lab 6 Output](assets/lab6-output.png)

</details>

<details>
<summary><strong>Lab 7: F-Test for Two Variances</strong></summary>

* **Test:** F-test to compare two variances.
* **Dataset:** `mtcars` (Automatic vs. Manual mpg).
* **Hypothesis:** $H_0: \sigma_1^2 = \sigma_2^2$.
* **Result:** P-value = 0.0669.
* **Decision:** Fail to reject $H_0$. No significant difference in mpg variability between transmission types.

![Lab 7 Output](assets/lab7-output.png)

</details>

<details>
<summary><strong>Lab 8: Proportions Tests</strong></summary>

* **One-Sample:** Test if Automatic cars = 50% ($p=0.5$).
    * *Result:* P-value = 0.3768. Fail to reject $H_0$.
      
![Lab 8 Output](assets/lab8a-output.png)

* **Two-Sample:** Compare Automatic proportion in 4-cyl vs. 6/8-cyl cars.
    * *Result:* P-value = 0.02161. **Reject $H_0$.**
    * *Interpretation:* 6/8-cylinder cars are significantly more likely to have automatic transmission.
      
![Lab 8 Output](assets/lab8b-output.png)


</details>
