#Test if the mean sepal length of Iris setosa is equal to 5.0 cm.
data(iris)

head(iris)

summary(iris)

#Check for Normal Distribution
shapiro.test(setosa$Sepal.Length)
# If p-value > 0.05, data is approximately normal


# Subset data for Iris setosa
setosa = subset(iris, Species == "setosa")

# Perform one-sample t-test
# Null hypothesis: mean sepal length = 5.0
result_single = t.test(setosa$Sepal.Length, mu = 5.0, alternative = "two.sided")

# Display results
print(result_single)

# If p-value < 0.05, reject the null hypothesis