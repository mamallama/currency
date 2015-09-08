# Currency Converter

##Intro
This is a currency converter. Have cash in hand, but want to exchange it for a different currency? 
Input your amount and currency code (or symbol, ex: "$10") and the currency you want to change that to. The currency converter will use exchange rates to give you accurate results.

##How it's done:
We have two classes, 
``` ruby
class CurrencyConverter
  def initialize (currency_hash)
    @currency_hash = currency_hash
  end

  def converter (given_currency, desired_currency)
      money_in = given_currency.amount
      money_out = money_in * (@currency_hash[desired_currency]/@currency_hash[given_currency.code])
      return converted_currency = Currency.new(money_out, desired_currency)
  end
end

```

and 

```ruby
class Currency
  attr_accessor :amount, :code, :symbol, :currency_symbol

  def initialize (amount, code = "")
    code_hash = { "$" => :USD,
                  "€" => :EUR,
                  "£" => :GBP,
                  "¥" => :JPY,
                  "₹" => :INR,
                  "Bs" => :VEF,
                  "₡" => :CRC}
    if code != ""
      @amount = amount
      @code = code
    else code = ""
      @code = code_hash[amount.slice(0)]
      @amount = amount.slice(1..-1).to_f

    end

  end

  ....
```
Between these, we are checking that different currencies cannot be multiplied, added, or subtracted, and we are calculating your converted currency amount. 
Using a hash for the currency symbols, and a separate hash for the exchage rates, we can use that information to give you 
an accurate converted amount in your desired currency.
