# Question 19

# Data
sigma2_0 <- 100  # claimed population variance
n <- 20
s2 <- 160        # sample variance

# Null: sigma^2 = 100
# Alt:  sigma^2 != 100

# Chi-square test statistic
chi_sq <- (n - 1) * s2 / sigma2_0

# Degrees of freedom
df <- n - 1

# Two-sided test at 1% level => each tail 0.005
chi_sq_lower <- qchisq(0.005, df)
chi_sq_upper <- qchisq(0.995, df)

chi_sq
chi_sq_lower
chi_sq_upper

# Decision:
# reject H0 if chi_sq < chi_sq_lower or chi_sq > chi_sq_upper
