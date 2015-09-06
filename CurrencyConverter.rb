#class CurrencyConverter
# @c = {USD: 1.0, EUR: 0.89805, GBP: 0.65534, JPY: 119.959, THB: 32.8280}
class UnknownCurrencyCodeError < Exception
end

class CurrencyConverter

  attr_reader :c

  def initialize (c)
    @c = c
  end

  def convert(first_currency_object, currency)
    if !@c.include?(first_currency_object.cc) || !@c.include?(currency)
      raise UnknownCurrencyCodeError, 'UnknownCurrencyCodeError: One or both of your currencies does not have a recorded value.'
    else
      multiplied = first_currency_object.value * @c[currency] / @c[first_currency_object.cc]
      converted_currency_object = Currency.new(multiplied, currency)
    end
  end

end
