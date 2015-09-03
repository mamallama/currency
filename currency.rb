require './differentcurrencyerror'

class Currency
  attr_accessor :amount, :code

  def initialize (amount, code)
    @amount = amount
    @code = code
  end

  def == (currency_1)
    @amount == currency_1.amount && @code == currency_1.code
  end

  def != (currency_1)
    @amount != currency_1.amount && @code == currency_1.code || @amount == currency_1.amount && @code != currency_1.code
  end

  def - (currency_1)
    if @code == currency_1.code
      @amount - currency_1.amount
    else
      raise DifferentCurrencyCodeError
    end
  end

  def + (currency_1)
    if @code == currency_1.code
      @amount + currency_1.amount
    else
      raise DifferentCurrencyCodeError
    end
  end

  def * (currency_1)
    @code == currency_1.code
    @amount.to_i * currency_1.amount.to_i ||  @amount.to_f * currency_1.amount.to_f 

  end
end
