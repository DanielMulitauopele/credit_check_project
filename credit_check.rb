# Your Luhn Algorithm Here (use a method for each step)

# Convert string into array
def string_to_array_method(card_number)
  card_number.chars
end

# Convert array of strings into array of integers
def array_to_integer_array_method(card_array)
  card_integer_array = []
  card_array.each do |integer|
    new_integer = integer.to_i
    card_integer_array << new_integer
  end
  return card_integer_array
end

# Reverse the direction of the array (see below)
def reverse_method(card_integer_array)
  card_integer_array.reverse
end

# Select every odd index and multiple the corresponding element * 2
def index_multiplier_method(reverse_integer_array)
  multiplied_integer_array = []
  reverse_integer_array.each_with_index do |value, index|
    if index.odd? == true
      value = value * 2
      multiplied_integer_array << value
    else
      value = value
      multiplied_integer_array << value
    end
  end
return multiplied_integer_array
end
# If the multiplied element is double digits, take those two digits and add them together, replacing the original digit

def double_to_single_method(multiplied_integer_array)
  multiplied_integer_array.each do |value|
  single_digit_array = []
    if value > 9
      value = value - 9
      single_digit_array << value
    else
      value = value
      single_digit_array << value
    end
  end
  return single_digit_array
end
# Take the remaining elements and sum them
# If the sum % 10 == 0 puts "The number is valid!"
# Else puts "The number is invalid!"


# The variables should be listed below
card_number = "4929735477250543"

card_array = string_to_array_method(card_number)
card_integer_array = array_to_integer_array_method(card_array)
reverse_integer_array = reverse_method(card_integer_array)
multiplied_integer_array = index_multiplier_method(reverse_integer_array)
single_digit_array = double_to_single_method(multiplied_integer_array)
# summed_array = double_to_single_array.sum
# valid_number? = modulo_10_method(summed_array)

# One method should encompass all of the others ("bake a cake method")

print single_digit_array
