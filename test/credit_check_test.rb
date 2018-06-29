require '../lib/credit_check.rb'
require 'minitest/autorun'
require 'minitest/pride'

class CreditCheckTest < Minitest::Test
  def test_valid_number?
    credit_card = CreditCheck.new
    my_card_number = 5541808923795240
    output = true
    assert_equal output, credit_card.valid_number?(my_card_number)
  end

  def test_validation_output
    credit_card = CreditCheck.new
    my_card_number = 5541808923795240
    output = "The number 5541808923795240 is valid."
    assert_equal output, credit_card.validation_output(my_card_number)

  end
end
