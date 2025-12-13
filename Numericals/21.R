# Question 21

# Data
mu0 <- 1450        # hypothesized mean
sigma <- 210       # known population standard deviation
n <- 100
x_bar <- 1390      # sample mean

# Null: mu >= 1450
# Alt:  mu < 1450

# z test
z_stat <- (x_bar - mu0) / (sigma / sqrt(n))

# One-sided p-value (mu < mu0)
p_value <- pnorm(z_stat)

z_stat
p_value

# Critical value at 1% level (lower tail)
z_crit <- qnorm(0.01)
z_crit

# Decision:
# if z_stat < z_crit, reject H0 and conclude mean life is less than 1450
