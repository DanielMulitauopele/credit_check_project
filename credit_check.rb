# Your Luhn Algorithm Here (use a method for each step)

#Convert all to string
def all_to_string_method(card_number)
  @card_number_string = card_number.to_s
end

# Convert string into array
def string_to_array_method(card_number_string)
  @card_number_string.chars
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
  single_digit_array = []
  multiplied_integer_array.each do |value|
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
def summing_method(single_digit_array)
  summed_array = single_digit_array.sum
end

# If the sum % 10 == 0 puts "The number is valid!"
# Else puts "The number is invalid!"
def modulo_10_method(summed_array, card_number)
  if summed_array % 10 == 0
    "The number #{card_number} is valid!"
  else
    "The number #{card_number} is invalid!"
  end
end

# def valid_number
#   modulo_10_method(summed_array, card_number)
# end

# The variables should be listed below
card_number = 5541808923795240

card_number_string = all_to_string_method(card_number)
card_array = string_to_array_method(card_number)
card_integer_array = array_to_integer_array_method(card_array)
reverse_integer_array = reverse_method(card_integer_array)
multiplied_integer_array = index_multiplier_method(reverse_integer_array)
single_digit_array = double_to_single_method(multiplied_integer_array)
summed_array = summing_method(single_digit_array)
valid_number = modulo_10_method(summed_array, card_number)

# One method should encompass all of the others ("bake a cake method")

print valid_number
