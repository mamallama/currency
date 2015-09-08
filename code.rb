require './currency'
require './currency_converter'
require './differentcurrencyerror'

currency_hash = { USD: 1.0,
                  EUR: 0.89,
                  GBP: 0.65}
                # JPY: 119.00,
                # INR: 66.73,
                # VEF: 6.34,
                # CRC: 536.00}


#money1 = Currency.new("25", "GBP")

#money2 = Currency.new("10", "USD")

desired_currency = :USD
given_currency = Currency.new("25", :GBP)

new_money = CurrencyConverter.new(currency_hash)
converted_money = new_money.converter(Currency.new(1, :USD), :USD) == Currency.new(1, :USD)
return converted_money
