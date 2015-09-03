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
    @code == currency_1.code
    @amount - currency_1.amount
    #else bring up Error message
  end

  def + (currency_1)
    @code == currency_1.code
    @amount + currency_1.amount
    #else bring up Error message
  end
end
