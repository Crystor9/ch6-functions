# Exercise 4: functions and conditionals

# Define a function `is_twice_as_long` that takes in two character strings, and 
# returns whether or not (e.g., a boolean) the length of one argument is greater
# than or equal to twice the length of the other.
# Hint: compare the length difference to the length of the smaller string
is_twice_as_long <- function(str1, str2) {
  greater <- nchar(str1) >= 2 * nchar(str2)
  return (greater)
}

# Call your `is_twice_as_long` function by passing it different length strings
# to confirm that it works. Make sure to check when _either_ argument is twice
# as long, as well as when neither are!

is_twice_as_long("crystor", "christie")
is_twice_as_long("abc", "abcdefg")
is_twice_as_long("abcdefg", "abc")

# Define a function `describe_difference` that takes in two strings. The
# function should return one of the following sentences as appropriate
#   "Your first string is longer by N characters"
#   "Your second string is longer by N characters"
#   "Your strings are the same length!"
describe_difference <- function(str1, str2) {
  difference <- nchar(str1) - nchar(str2)
  if (difference > 0) {
    result <- paste("Your first string is longer by ", difference, " characters")
  } else if (difference == 0) {
    result <- "Your strings are the same length"
  } else {
    result <- paste("Your second string is longer by ", -1 * difference, " characters")
  }
  return (result)
}

# Call your `describe_difference` function by passing it different length strings
# to confirm that it works. Make sure to check all 3 conditions1

describe_difference("christie", "crystor")
