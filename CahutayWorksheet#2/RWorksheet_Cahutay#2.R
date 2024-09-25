# Number 1: Vector using ":" operator
# A. Sequence from -5 to 5
mySequence <- -5:5
mySequence
# The output shows a sequence of numbers starting from negative 5 to positive 5

# B. The value of x is a sequence of numbers from 1 to 7
x <- 1:7
x


# Number 2: Vector using seq() Function
# A. seq(1,3, by=0.2) with specified step size
mySequence2 <- seq(1, 3, by = 0.2)
mySequence2
# The output shows a sequence of numbers from 1 iterating by 0.2 until it reaches 3


# Number 3: Factory Workers
# A. Access 3rd element
factory_vector <- c(34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 
                    35, 31, 27, 22, 37, 34, 19, 20, 57, 49, 
                    50, 37, 46, 25, 17, 37, 43, 53, 41, 51, 
                    35, 24, 33, 41, 53, 40, 18, 44, 38, 41, 48, 
                    27, 39, 19, 30, 61, 54, 58, 26, 18)
factory_vector[3]
# The value of the 3rd element is 22

# B. Access 2nd and 4th element
factory_vector[2]
factory_vector[4]
# The 2nd value holds number 28, while the 4th holds 36

# C. Access all except 4th and 12th
exclude <- factory_vector[-c(4, 12)]
exclude


# Number 4: Vector names(x)
# A. The vector is named "x" with named elements "first", "second", and "third"
x <- c("first" = 3, "second" = 0, "third" = 9)
names(x)

# B. The first line of the output of the code below is the strings "first" and "third", 
# and the next line shows the number the strings are holding/equal to.
x[c("first", "third")]


# Number 5: Sequence x from -3:2
x <- -3:2

# A. Modify 2nd element
x[2] <- 0
# The output will generate a sequence of numbers from -3 to 2, 
# however the second element was changed due to it being reassigned a number = 0.

# B. Code and its output
x


# Number 6: Diesel Fuel by Mr. Cruz
# A. Data frame for month, price per liter, and purchase quantity
diesel_data <- data.frame(
  month = c("Jan", "Feb", "March", "Apr", "May", "June"),
  price = c(52.50, 57.25, 60.00, 65.00, 74.25, 54.00),
  purchase_quantity = c(25, 30, 40, 50, 10, 45)
)
diesel_data

# B. The average fuel expenditure of Mr. Cruz from Jan to June
expenditure <- weighted.mean(diesel_data$price, diesel_data$purchase_quantity)
expenditure


# Number 7: River Data
# A. Type "rivers" in R console to generate the built-in dataset
rivers
# Vector data of rivers
data <- c(length(rivers), 
          sum(rivers),
          mean(rivers), 
          median(rivers), 
          var(rivers), 
          sd(rivers), 
          min(rivers),
          max(rivers)
)

# B. The results of the rivers data
data

# C. R Script and its output
rivers_data <- data.frame(
  Data = c("Length", "Sum", "Mean", "Median", "Varian", "Standard Deviation", "Minimum", "Maximum"),
  Value = data
)
rivers_data


# Number 8: Celebrity annual pay rankings
# A.1 Power ranking vector
power_ranking <- c(1:25)
power_ranking

# A.2 Celebrity names
celebrity_name <- c(
  "Tom Cruise", "Rolling Stones", "Oprah Winfrey", 
  "U2", "Tiger Woods", "Steven Spielberg", 
  "Howard Stern", "50 Cent", "Cast of the Sopranos", 
  "Dan Brown", "Bruce Springsteen", "Donald Trump", 
  "Muhammad Ali", "Paul McCartney", "George Lucas", "Elton John",
  "David Letterman", "Phil Mickelson", "J.K Rowling",
  "Brad Pitt", "Peter Jackson", "Dr. Phil McGraw",
  "Jay Leno", "Celine Dion", "Kobe Bryant"
)
celebrity_name

# A.3 Pay vector
pay <- c(67, 90, 225, 110, 90, 332, 302, 41, 52, 88, 55, 44, 
         55, 40, 233, 34, 40, 47, 75, 25, 39, 45, 32, 40, 31
)
pay

# B. Modified J.K. Rowling details: 
# J.K. Rowling ranking and pay are modified.
power_ranking[19] <- 15
pay[19] <- 90

# Modified output
celebrity_name
power_ranking
pay

# C. Importing an external Excel/CSV file for Forbes ranking
forbes_ranking <- read.csv("PowerRanking.csv")
forbes_ranking

# D. Access row 10 to 20 and save as an RData file
row_data <- forbes_ranking[10:20, ]

save(row_data, file = "Ranks.RData")

load("Ranks.RData")
row_data


# Number 9:
# A. Import the Excel file to RStudio
library(openxlsx)
hotel_vienna <- read.xlsx("hotels-vienna.xlsx")

# B. Dimensions of the dataset
dim(hotel_vienna)

# C. Select specific columns from the dataset
columns <- hotel_vienna[, c("country", "neighbourhood", "price", "stars", "accommodation_type", "rating")]
columns

# D. Saving the selected data as new.RData
save(columns, file = "new.RData")

# E. Display the first six rows and last six rows of new.RData
load("new.RData")
head(columns)
tail(columns)


# Number 10: List of 10 vegetables
# A. A list of vegetables
veggies <- list("Eggplpant", "Cabbage", "Broccoli", "Water Spinach", "Squash",
                "Onion", "Pipino", "Patola", "Patani", "Malunggay"
)
veggies

# B. Adding two more vegetables
veggies <- append(veggies, list("Carrot", "Spinach"))
veggies

# C. Adding four more vegetables after the 5th element
veggies <- append(veggies, list("Bitter Gourd", "Tomato", "Potato", "Kasoy"), after = 5)
veggies
length(veggies)

# D. Removing vegetables from index 5, 10, and 15
veggies <- veggies[-c(5, 10, 15)]
veggies
length(veggies)
