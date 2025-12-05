#Q12

data_vector = c(86, 89, 84, 78, 75, 74, 85, 71, 84, 71, 75, 68, 75, 71, 82, 85, 81, 78, 79, 78)
sigma_sq_0 = 64    # Hypothesized Variance
alpha = 0.05       # Significance Level

#Calculate Statistics
n = length(data_vector) #sample size
df = n - 1
s_sq = var(data_vector) # Sample Variance


chi_sq_statistic <- (df * s_sq) / sigma_sq_0

#Calculate P-Value (Two-Tailed Logic)
if (chi_sq_statistic > df) {
  # Right Tail (Sample variance is larger than Hypothesized)
  p_value <- 2 * pchisq(chi_sq_statistic, df = df, lower.tail = FALSE)
} else {
  # Left Tail (Sample variance is smaller than Hypothesized)
  p_value <- 2 * pchisq(chi_sq_statistic, df = df, lower.tail = TRUE)
}

print(p_value)
#if p_value < alpha REJECT the Null Hypothesis.
