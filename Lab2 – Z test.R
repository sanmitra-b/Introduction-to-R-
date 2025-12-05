# 1. Setup Data and Assumptions
x = mtcars$mpg
mu_null = 20       # Hypothesized mean
sigma_known = 6    # Assumed Population SD

#Check for Normal Distribution
shapiro.test(x) # If p-value > 0.05, data is approximately normal


# 2. Calculate Statistics
x_bar = mean(x)    # Sample mean
n = length(x)      # Sample size (32)

# 3. Calculate Z-Score
z_score = (x_bar - mu_null) / (sigma_known / sqrt(n))

# 4. Calculate P-Value (Two-tailed)
p_value = 2 * pnorm(-abs(z_score))

# 5. Output Results
cat("Sample Mean:", x_bar, "\n")
cat("Z-Score:", z_score, "\n")
cat("P-Value:", p_value, "\n")
