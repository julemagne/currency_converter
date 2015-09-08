# currency converter test
require './Currency'
require './CurrencyConverter'
require './CurrencyTrader'

converter = CurrencyConverter.new({USD: 1.0, EUR: 0.89805, GBP: 0.65534, JPY: 119.959, THB: 32.8280})
#2015 exchange rates
converter2 = CurrencyConverter.new({USD: 1.0, EUR: 0.9947279204, GBP: 0.6189267810, JPY: 102.140, THB: 37.50})
#2000 exchange rates

puts "Normal Mode Tests"
first_currency_object = Currency.new("$40")
puts first_currency_object.value
puts first_currency_object.cc

second_currency_oject = Currency.new(40, :USD)
puts second_currency_oject.value
puts second_currency_oject.cc

third_currency_object = Currency.new("20000", :JPY)
puts third_currency_object.value
puts third_currency_object.cc

fourth_currency_object = Currency.new("40", :THB)
puts fourth_currency_object.value
puts fourth_currency_object.cc

first_currency_object == second_currency_oject
#first_currency_object == fourth_currency_object

x = first_currency_object + second_currency_oject
puts x.value
puts x.cc

x = first_currency_object - second_currency_oject
puts x.value
puts x.cc

x = first_currency_object*100
puts x.value
puts x.cc

x = converter.convert(fourth_currency_object, :JPY)
#converter.convert(third_currency_object, :JJJ)
puts x.value
puts x.cc

x = converter.convert(x, :USD)
puts x.value
puts x.cc

y = converter.convert(x, :USD)
puts y.value
puts y.cc

puts (x == y)

puts "Hard Mode Tests"
trader = CurrencyTrader.new(converter, converter2, first_currency_object)

trader.invest

z = converter.convert(converter2.convert(first_currency_object, :EUR), :USD)
puts z.value
puts z.cc

z = converter.convert(converter2.convert(first_currency_object, :GBP), :USD)
puts z.value
puts z.cc

z = converter.convert(converter2.convert(first_currency_object, :JPY), :USD)
puts z.value
puts z.cc

z = converter.convert(converter2.convert(first_currency_object, :THB), :USD)
puts z.value
puts z.cc


#Atom plea
