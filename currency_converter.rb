require './currency'
require'./differentcurrencyerror'

class CurrencyConverter
  def initialize (currency_hash)
    @currency_hash = currency_hash
  end

  def converter (given_currency, desired_currency)
      money_in = given_currency.amount
      money_out = money_in * (@currency_hash[desired_currency]/@currency_hash[given_currency.code])
      return Currency.new(money_out, desired_currency)
  end
end
