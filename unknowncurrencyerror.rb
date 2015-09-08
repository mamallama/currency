class UnknownCurrencyCodeError < StandardError
  def message
    "I don't know that currency yet. Try again later."
  end
end
