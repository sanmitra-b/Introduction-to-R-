# Question 17

# Data
hours_gained <- c(2.5, 3.0, 2.25, 3.25, 1.75, 1.5, 2.5, 2.25, 3.0,
                  3.25, 3.0, 2.5, 2.75, 3.25, 3.75)

# We test whether the mean gain is greater than 0
# Null: mu <= 0
# Alt:  mu > 0

t_test_result <- t.test(hours_gained,
                        mu = 0,
                        alternative = "greater",
                        conf.level = 0.98)

t_test_result
