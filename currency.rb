class Currency
  attr_accessor :amount, :code

  def initialize (amount, code)
    @amount = amount
    @code = code
  end

  def == (currency_1)
    @amount == currency_1.amount && @code == currency_1.code
  end

  def add (currency_1)
    @amount += currency_1.amount.to_i && @code += currency_1.code.to_i
  end
end
