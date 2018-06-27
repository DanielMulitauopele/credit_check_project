card_number = "4929735477250543"

# Your Luhn Algorithm Here

## Turn card_number into an array/reverse it/turn to integers
array = card_number.chars.reverse.map(&:to_i)

array.each_index do |index|
if index % 2 != 0
  array[index] = array[index] * 2
end
end

print array

## Method that sums those digits if over 10



# If the numbers in the array > 10, add the two digits to each other
# print array
## Sum all of the digits


## Module Ten
# If % of the digits remaining = 0, print "The number is valid!"
# If % of the digits remaining != 0, print "The number is invalid!"

#Output
## If it is valid, print "The number is valid!"
## If it is invalid, print "The number is invalid!"
