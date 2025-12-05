#Compare sepal length between Iris versicolor and Iris virginica.

#Load Dataset
data(iris)
head(iris)
summary(iris)


#Check for Normal Distribution
shapiro.test(setosa$Sepal.Length)
# If p-value > 0.05, data is approximately normal


# Subset data for versicolor and virginica
versicolor = subset(iris, Species == "versicolor")
virginica = subset(iris, Species == "virginica")

# Perform two-sample t-test (assuming unequal variances)
result_two_sample = t.test(versicolor$Sepal.Length, virginica$Sepal.Length, 
                            alternative = "two.sided", 
                            var.equal = FALSE)

# Display results
print(result_two_sample)
