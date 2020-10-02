# Data Frames
x <- 10:1
y <- -4:5
z <- c('Hockey','Football','Curling', 'Soccer', 'Rugby', 'Baseball', 'Golf', 'Basketball', 'Wrestling', 'Tennis')
theDF <- data.frame(x, y, z)
theDF

str(theDF)

theDF [1,2]
View(theDF)

# Using names
theDF$x
theDF$x[3]

# Editing names
names(theDF) <- c("Popularity", "Team Strength", "Sport")
View(theDF)

# Computing sum
Pop <- sum(theDF[1,1]:theDF[10,1])
Pop
cat("The sum of popularity is", Pop)

