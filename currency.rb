require './differentcurrencyerror'

class Currency
  attr_accessor :amount, :code, :symbol, :currency_symbol

  def initialize (amount, code = "")
    code_hash = { "$" => "USD",
                  "€" => "EUR",
                  "£" => "GBP",
                  "¥" => "JPY",
                  "₹" => "INR",
                  "Bs" => "VEF",
                  "₡" => "CRC"}
    if code != ""
      @amount = amount
      @code = code
    else code = ""
      @code = code_hash[amount.slice(0)]
      @amount = amount.slice(1..-1).to_f

    end

  end

  def == (currency_1)
    @amount == currency_1.amount && @code == currency_1.code
  end

  def != (currency_1)
    @amount != currency_1.amount && @code == currency_1.code || @amount == currency_1.amount && @code != currency_1.code
  end

  def - (currency_1)
    if @code == currency_1.code
      Currency.new(@amount - currency_1.amount, @code)
    else
      raise DifferentCurrencyCodeError
    end
  end

  def + (currency_1)
    if @code == currency_1.code
      Currency.new(@amount + currency_1.amount, @code)
    else
      raise DifferentCurrencyCodeError
    end
  end

  def * (currency_1)
    @code == currency_1.code
    @amount.to_i * currency_1.amount.to_i ||  @amount.to_f * currency_1.amount.to_f
  end
end
