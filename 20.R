# Question 20

# Data
sigma2_0 <- 6800  # claimed minimum variance
n <- 20
s2 <- 5000        # sample variance

# Null: sigma^2 <= 6800
# Alt:  sigma^2 > 6800   (manufacturer claims more variability than 6800)

# Chi-square test statistic
chi_sq <- (n - 1) * s2 / sigma2_0

df <- n - 1

# Critical value for upper tail at 5% level
chi_sq_crit <- qchisq(0.95, df)

chi_sq
chi_sq_crit

# Decision:
# if chi_sq > chi_sq_crit, reject H0 and accept claim that variance > 6800
# Note: with s2 < 6800, we will not reject H0 in practice.
