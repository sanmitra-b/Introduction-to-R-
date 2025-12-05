#Using the built-in mtcars dataset, let's test if the variance of Miles Per Gallon
#(mpg) is different between Automatic (am=0) and Manual (am=1) cars


data(mtcars)

# 2. Perform F-test
# Formula: mpg (numeric) ~ am (categorical group)
result <- var.test(mpg ~ am, data = mtcars)

print(result)

