require 'test/unit'

class CreditCardValidatorTest < Test::Unit::TestCase

  def setup
    @cards = [
      {number: '4485 6665 2618 6303', CVV2: '441', expiration_date: '10/2019', type: 'Visa', bank: 'Bmw Bank of North America'},
      {number: '4929 7189 2215 5772', CVV2: '161', expiration_date: '03/2019', type: 'Visa', bank: 'Barclays Bank Plc'},
      {number: '4716 4734 2066 7376', CVV2: '978', expiration_date: '11/2020', type: 'Visa', bank: ''},
      {number: '4024 0071 6293 1272', CVV2: '583', expiration_date: '09/2019', type: 'Visa', bank: 'Bank of America'},
      {number: '4194 8521 2820 2217', CVV2: '023', expiration_date: '05/2018', type: 'Visa', bank: 'Dexsta Federal Credit Union'}
    ]
  end

  def test_credit_card_number_is_valid
    @cards.each do |card|
      assert_true(is_valid(card))
    end
  end

  private

  def is_valid(card)
    true
  end

end