require './differentcurrencyerror'

class Currency
  attr_accessor :amount, :code

  def initialize (amount, code)
    @amount = amount
    @code = code
  end

  #Need to include flag for symbols
  #def split? include? OR... better way?

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

  def isolate_symbols (currency_1)
    @isolate_symbols = currency_1.slice(0)
  end

def
end
