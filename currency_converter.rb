require './currency'
require'./differentcurrencyerror'

class CurrencyConverter
  def initialize (currency_hash)
    @currency_hash = currency_hash
  end

  def converter (given_currency, desired_currency)
      money_in = given_currency.amount
      converter1 = @currency_hash[desired_currency]/@currency_hash[given_currency] * money_in.to_f
  end
end
