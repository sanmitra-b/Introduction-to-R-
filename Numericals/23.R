# Question 23

# Data
weights <- c(2.7, 2.5, 2.6, 2.6, 2.7, 2.5, 2.5, 2.3, 2.4, 2.3, 2.5)
n <- length(weights)

# Sample variance
s2 <- var(weights)

# Expected variance
sigma2_0 <- 0.16

# Hypotheses:
# H0: sigma^2 = 0.16  (or sigma^2 <= 0.16, depending on the exact wording)
# H1: sigma^2 > 0.16  (since expected to be more than 0.16)

# Chi-square statistic
chi_sq <- (n - 1) * s2 / sigma2_0
df <- n - 1

# Upper-tail critical value for 5% level
chi_sq_crit <- qchisq(0.95, df)

chi_sq
chi_sq_crit

# Decision:
# if chi_sq > chi_sq_crit, reject H0 and conclude variance > 0.16
