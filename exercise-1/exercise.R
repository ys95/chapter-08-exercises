# Exercise 1: creating and accessing lists

# Create a vector `my_breakfast` of everything you ate for breakfast
my_breakfast <- c("bread", "butter", "milk")

# Create a vector `my_lunch` of everything you ate (or will eat) for lunch
my_lunch <- c("sandwich", "cookie", "apple")

# Create a list `meals` that has contains your breakfast and lunch
meals <- list(breakfast = my_breakfast, lunch = my_lunch)

# Add a "dinner" element to your `meals` list that has what you plan to eat 
# for dinner
meals <- list(meals, dinner = "Ramen")

# Use dollar notation to extract your `dinner` element from your list
# and save it in a vector called 'dinner'
dinner <- meals$dinner

# Use double-bracket notation to extract your `lunch` element from your list
# and save it in your list as the element at index 5 (no reason beyond practice)
lun <- meals[["lunch"]]
replace(meals, lun, 5)

# Use single-bracket notation to extract your breakfast and lunch from your list
# and save them to a list called `early_meals`
early_meals <- meals[1]

### Challenge ###

# Create a list that has the number of items you ate for each meal
# Hint: use the `lappy()` function to apply the `length()` function to each item
each <- list(breakfast = length(my_breakfast), lunch = length(my_lunch), dinner = length(dinner))

# Write a function `add_pizza` that adds pizza to a given meal vector, and
# returns the pizza-fied vector
add_pizza <- function(my_lunch) {
  pizza_fied <- paste(my_lunch, "pizza")
  
  pizza_fied
}

# Create a vector `better_meals` that is all your meals, but with pizza!
better_meals <- add_pizza(meals)
