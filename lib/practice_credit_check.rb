# Your Luhn Algorithm Here (use a method for each step)

# Convert string into array of characters
def string_to_array(credit_number)
  credit_number.chars
end

# Convert to integers
# def convert_to_integer(credit_array)
#   credit_array.map do |element|
#     element.to_i
#   end
# end

# Does not work with .each, does not convert to integers
def convert_to_integer(credit_array)
  credit_array_integer = []
  credit_array.each do |integer|
    credit_array_integer << integer.to_i
  end
  return credit_array_integer
end

#Reverse the array of integers, listed below

# Multiply every other digit, starting with the second digit

def double_array(reversed_integer_array)
  reversed_integer_array.each_index do |index|
    if index % 2 == 1
      reversed_integer_array[index] = reversed_integer_array[index] * 2
    end
  end
end


# Convert any value over 10 into the sum of their respective digits

def add_double_digits(doubled_array)
  doubled_array.map do |integer|
    if integer > 9
      integer = integer - 9
    else integer = integer
    end
  end
end

# Won't work with .each, not sure why
# def add_double_digits(doubled_array)
#   doubled_array.each do |integer|
#     if integer > 9
#       integer = integer - 9
#     else integer = integer
#     end
#   end
# end

# Sum all the digits (below)
# Modulo 10 the digits

def credit_validity(summed_array, credit_number)
  if summed_array % 10 == 0
    "Credit card number #{credit_number} is valid!"
  else
    "Credit card number #{credit_number} is invalid!"
  end
end

# If modulo 10 = 0 (true), then number is valid. Print "The number is valid!"
# else modulo 10 != 0 (false), then number is invalid. Print "The number is invalid!"

credit_number = "4929735477250543"


credit_array = string_to_array(credit_number)
credit_array_integer = convert_to_integer(credit_array)
reversed_integer_array = credit_array_integer.reverse
doubled_array = double_array(reversed_integer_array)
double_to_single_array = add_double_digits(doubled_array)
summed_array = double_to_single_array.sum
valid_or_invalid = credit_validity(summed_array, credit_number)

puts valid_or_invalid
