# Install packages
install.packages("neuralnet")

# Check the installed packages
installed.packages()[1:5,]

# Create the training dataset
# Input features
TKS = c(20, 10, 30, 20, 80, 30)
CSS = c(90, 20, 40, 50, 50, 80)
# Input labels
Placed = c(1, 0, 0, 0, 1, 1) 

# Combine multiple columns or features into a single set of data
df = data.frame(TKS, CSS, Placed)

# Load library
require(neuralnet)

# Fit neural network
# hidden - no of neurons in the hidden layer
# act.fct - activation function
nn = neuralnet(Placed~TKS+CSS, data = df, hidden=4, act.fct = "logistic", linear.output = FALSE)

# Plot neural network
plot(nn)
