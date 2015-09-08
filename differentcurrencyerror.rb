class DifferentCurrencyCodeError < StandardError
  def message
    "These are two different currencies. Sorry, no go."
  end
end
