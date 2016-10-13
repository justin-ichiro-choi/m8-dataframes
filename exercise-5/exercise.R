# Exercise 5: Gates Foundation Educational Grants

# Read data into a variable called `grants` using the `read.csv` function
my.data <- read.csv("file:///C:/Users/Justin/Documents/info201/m8-dataframes/exercise-5/data/gates_money.csv", stringsAsFactors = FALSE)
# Use the View function to look at your data
View(my.data)

# Create a variable `spending` as the `total_amount` column of the dataset
spending <- my.data$total_amount

# Confirm that your `spending` variable is a vector using the `is.vector` function
is.vector(spending)

# Create a variable `org` as the `organization` column of the dataset.
# Unfortunately, it will not be a vector by default, so you must transform it using the as.vector function

org <- as.vector(my.data$organization)

### Now you can ask some more interesting questions about the dataset.  Store your answers in variables ###

# What was the mean grant value?

mean <- mean(spending)

# What was the dollar amount of the largest grant?

max.spent <- max(spending)


# What was the dollar amount of the smallest grant?

min.spent <- min(spending)

# Which organization received the largest grant?

largest.org <- org[which.max(spending)]

# Which organization received the smallest grant?

smallest.org <- org[which.min(spending)]

# How many grants were awarded in 2010?
num.of.grants.2010 <- length(my.data[my.data$start_year == 2010, "start_year"])
