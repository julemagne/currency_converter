# currency_converter_normal
require './Currency'
require './CurrencyConverter'
require './CurrencyTrader'

# No commas, please.
converter = CurrencyConverter.new(USD: 1.0, EUR: 0.89805, GBP: 0.65534, JPY: 119.959, THB: 32.8280)
converter2 = CurrencyConverter.new()

first_currency_object = Currency.new(value, cc)

converter.convert(first_currency_object, currency)

trader = CurrencyTrader.new(converter, converter2, currency)

trader.invest
