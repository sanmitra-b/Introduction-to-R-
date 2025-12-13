# Question 16

# Data
coastal <- c(68, 72, 64, 65, 56, 72, 64, 56, 60, 73)
non_coastal <- c(76, 78, 68, 72, 83, 85, 88, 78)

# Null: mu_coastal >= mu_noncoastal
# Alt:  mu_coastal < mu_noncoastal (coastal is poorer)

# Assume equal variances (or check with var.test if needed)
# Use two-sample t-test, one-sided

t_test_result <- t.test(coastal, non_coastal,
                        alternative = "less",  # coastal < non-coastal
                        var.equal = TRUE,      # change to FALSE if you want Welch
                        conf.level = 0.99)

t_test_result
