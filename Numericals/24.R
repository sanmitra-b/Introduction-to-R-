# Question 24

# Data
before <- c(68, 72, 74, 67, 79, 78, 82, 78, 77, 77, 80, 78)
after  <- c(78, 75, 78, 80, 80, 85, 80, 75, 90, 92, 95, 90)

# We test whether the mean score after coaching is greater than before.
# Null: mu_after <= mu_before
# Alt:  mu_after > mu_before

t_test_result <- t.test(after, before,
                        paired = TRUE,
                        alternative = "greater",
                        conf.level = 0.99)

t_test_result
