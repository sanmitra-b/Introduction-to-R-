# Question 15

# Data
n1 <- 1000  # rural
x1 <- 5
n2 <- 1500  # urban
x2 <- 3

p1_hat <- x1 / n1
p2_hat <- x2 / n2

# Null: p1 <= p2
# Alt:  p1 > p2

# Pooled proportion
p_pool <- (x1 + x2) / (n1 + n2)

# Standard error
se <- sqrt(p_pool * (1 - p_pool) * (1/n1 + 1/n2))

# Test statistic (z)
z_stat <- (p1_hat - p2_hat) / se

# One-sided p-value (p1 > p2)
p_value <- 1 - pnorm(z_stat)

z_stat
p_value

# Critical value for 1% level (one-sided)
z_crit <- qnorm(0.99)
z_crit

# Decision:
# if z_stat > z_crit, reject H0 and conclude rural proportion > urban
