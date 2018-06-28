class CreditCheck

  def initialize(card_number)
    @card_number_string = card_number.to_s
  end

  def string_to_array
    @string_array = @card_number_string.chars
  end

  def string_array_to_integers
    @integer_array = []
    @string_array.each do |integer|
      new_integer = integer.to_i
      @integer_array << new_integer
    end
    return @integer_array
  end

end

credit_check = CreditCheck.new("4929735477250543")

print credit_check.string_array_to_integers
