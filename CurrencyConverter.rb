#class CurrencyConverter
require './Currency'

class CurrencyConverter

  def initialize (c)
    @c = {USD: 1.0, EUR: 0.89805, GBP: 0.65534, JPY: 119.959, THB: 32.8280}
  end

  def convert(first, second)
    if require first_currency_object.cc != second_currency_oject.cc
      raise UnknownCurrencyCodeError, 'UnknownCurrencyCodeError: One or both of your currencies does not have a recorded value.'
    else
      multiplied = first * second
      puts "Your converted value is #{second_currency_oject.cc}#{multiplied}."
    end
  end

end
