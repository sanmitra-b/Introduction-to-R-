#Test for Single Proportion

data(mtcars)

# Success = automatic (am = 0)
table(mtcars$am)
# or:
success_auto <- sum(mtcars$am == 0)  # count of automatics
n_total      <- nrow(mtcars)         # total cars
success_auto
n_total

prop.test(
  x = success_auto,  # number of successes
  n = n_total,       # total trials
  p = 0.5,           # hypothesized proportion
  alternative = "two.sided",
  conf.level = 0.95
)

#Test for Two Proportions

data(mtcars)

# Define groups
group1 <- mtcars$cyl == 4
group2 <- mtcars$cyl != 4   # 6 or 8

# Success = automatic (am = 0)
x1 <- sum(mtcars$am[group1] == 0)   # successes in group 1
n1 <- sum(group1)                   # total in group 1

x2 <- sum(mtcars$am[group2] == 0)   # successes in group 2
n2 <- sum(group2)                   # total in group 2

c(x1, n1)
c(x2, n2)

prop.test(
  x = c(x1, x2),      # successes in each group
  n = c(n1, n2),      # totals in each group
  alternative = "two.sided",
  conf.level = 0.95,
  correct = TRUE      # Yates correction (default)
)

