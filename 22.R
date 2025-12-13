# Question 22

# Data
sales <- c(112, 124, 110, 114, 108, 114, 115, 118, 125, 126)
mu0 <- 120

# Null: mu = 120
# Alt:  mu != 120

t_test_result <- t.test(sales,
                        mu = mu0,
                        alternative = "two.sided",
                        conf.level = 0.99)

t_test_result
