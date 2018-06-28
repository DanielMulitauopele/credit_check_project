# Your Luhn Algorithm Here (use a method for each step)

# Convert string into array
# Convert array of strings into array of integers
# Reverse the direction of the array
# Select every odd index and multiple the corresponding element * 2
# If the multiplied element is double digits, take those two digits and add them together, replacing the original digit
# Take the remaining elements and sum them
# If the sum % 10 == 0 puts "The number is valid!"
# Else puts "The number is invalid!"

# The variables should be listed below
card_number = "4929735477250543"

card_array = string_to_array_method(card_number)
card_integer_array = array_to_integer_array_method(card_array)
reverse_integer_array = (card_integer_array).reverse
multiplied_integer_array = index_multiplier_method(reverse_integer_array)
double_to_single_array = double_to_single_method(multiplied_integer_array)
summed_array = double_to_single_array.sum

valid_number? = modulo_10_method(summed_array)

# One method should encompass all of the others ("bake a cake method")
