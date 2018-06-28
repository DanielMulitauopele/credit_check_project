card_number = "4929735477250543".reverse

array = card_number.chars.map(&:to_i)

array.each_index do |index|
  if index % 2 == 1
    array[index] = array[index] * 2
  end
end

array.each do |number|
  if number > 9
    number = (number / 10) + (number % 10)
  end
end


print array
