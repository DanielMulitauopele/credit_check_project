class CreditCheck


def initialize
  @card_number = []
  @card_number_string = ""
  @card_array = []
  @card_integer_array = []
  @reverse_integer_array = []
  @multiplied_integer_array = []
  @single_digit_array = []
  @summed_array = 0
  @valid_number
end

#Convert all to string
def all_to_string_method(card_number)
  @card_number_string = card_number.to_s
  @card_number = card_number.to_i
end

# Convert string into array
def string_to_array_method
  @card_array = @card_number_string.chars
end

# Convert array of strings into array of integers
def array_to_integer_array_method
  @card_integer_array = []
  @card_array.each do |integer|
    new_integer = integer.to_i
    @card_integer_array << new_integer
  end
  return @card_integer_array
end

# Reverse the direction of the array (see below)
def reverse_method
  @reversed_array = @card_integer_array.reverse
end

# Select every odd index and multiple the corresponding element * 2
def index_multiplier_method
  #@multiplied_integer_array = []
  @reversed_array.each_with_index do |value, index|
    if index.odd? == true
      value = value * 2
      @multiplied_integer_array << value
    else
      value = value
      @multiplied_integer_array << value
    end
  end
return @multiplied_integer_array
end

# If the multiplied element is double digits, take those two digits and add them together, replacing the original digit
def double_to_single_method
  #single_digit_array = []
  @multiplied_integer_array.each do |value|
    if value > 9
      value = value - 9
      @single_digit_array << value
    else
      value = value
      @single_digit_array << value
    end
  end
  return @single_digit_array
end

# Take the remaining elements and sum them
def summing_method
  @summed_array = @single_digit_array.sum
end

# If the sum % 10 == 0 puts "The number is valid!"
# Else puts "The number is invalid!"
def modulo_10_method
  if @summed_array % 10 == 0
    "The number #{@card_number} is valid!"
  else
    "The number #{@card_number} is invalid!"
  end
end

def valid_number?(card_number)
  all_to_string_method(card_number)
  string_to_array_method
  array_to_integer_array_method
  reverse_method
  index_multiplier_method
  double_to_single_method
  summing_method
  modulo_10_method
end

end

credit_check = CreditCheck.new

print credit_check.valid_number?("4929735477250543")
