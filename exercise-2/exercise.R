# Exercise 2: Creating data frames

# Create a vector of the number of points the Seahawks have scored in each game this season (google "Seahawks")

seahawkScores <- c(12, 3, 37, 27)

# Create a vector of the number of points the Seahwaks have allowed to be scored against them in each game this season

seahawkBores <- c(10, 9, 18, 17)

# Combine your two vectors into a dataframe

my.data <- data.frame(seahawkScores,seahawkBores)
print(my.data)

#Create a new column "diff" that is the difference in points
my.data$diff <- abs(seahawkScores - seahawkBores)

# Create a new column "won" which is TRUE if the Seahawks wom
my.data$won <- (seahawkScores > seahawkBores)

# Create a vector of the opponents
opponents <- c("Dolphins", "Rams", "49ers", "Jets")

# Assign your dataframe rownames of their opponents
row.names(my.data) <- opponents
print(my.data)
