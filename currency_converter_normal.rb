# currency_converter_normal
require './Currency'
require './CurrencyConverter'

def convert_currency(value1, cc1, value2, cc2)
  first_currency_object = Currency.new(value1, cc1)
  puts first_currency_object.value
  puts first_currency_object.cc

  second_currency_oject = Currency.new(value2, cc2)
  puts second_currency_oject.value
  puts second_currency_oject.cc

  converter = CurrencyConverter.new({USD: 1.0, EUR: 0.89805, GBP: 0.65534, JPY: 119.959, THB: 32.8280})

  converter.convert(first_currency_object, currency)
end
