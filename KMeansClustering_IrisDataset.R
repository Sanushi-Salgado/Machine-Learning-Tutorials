# Tutorial link - http://rischanlab.github.io

# Show the top few records in the iris dataset
head(iris)

# Show the column names
names(iris)

# Separate features and labels
x = iris[,-5]
y = iris$Species

# Create kmeans model
kc <- kmeans(x,3)
kc
table(y,kc$cluster)

# After we know the result, we need to know how many error and missing data, so we need to compare the clustering result with the species/classes iris data.
table(y,kc$cluster)

# For plotting we can use plot function, In this case I plot the Sepal length as x-axis and Sepal Width as y-axis, you can choose different.
plot(x[c("Sepal.Length", "Sepal.Width")], col=kc$cluster)
points(kc$centers[,c("Sepal.Length", "Sepal.Width")], col=1:3, pch=23, cex=3)