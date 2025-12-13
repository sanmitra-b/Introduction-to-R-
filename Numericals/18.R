# Question 18

# Data
n_male <- 300
x_male <- 160
n_female <- 400
x_female <- 230

# Sample proportions
p_male <- x_male / n_male
p_female <- x_female / n_female

# Null: p_male = p_female
# Alt:  p_male != p_female

# Pooled proportion
p_pool <- (x_male + x_female) / (n_male + n_female)

# Standard error
se <- sqrt(p_pool * (1 - p_pool) * (1/n_male + 1/n_female))

# Test statistic (z)
z_stat <- (p_male - p_female) / se

# Two-sided p-value
p_value <- 2 * (1 - pnorm(abs(z_stat)))

z_stat
p_value

# Critical values at 2% level (two-sided): ±z_(0.99)
z_crit <- qnorm(0.99)
z_crit

# Decision:
# if |z_stat| > z_crit, reject H0 and conclude proportions differ