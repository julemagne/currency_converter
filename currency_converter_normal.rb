#currency_converter_normal
require './Currency'
require './CurrencyConverter'




puts "Enter the amount and currency that you would like to convert from."
value = gets.chomp
first_currency_object=Currency.new(value)
puts first_currency_object.value
puts first_currency_object.cc

puts "Enter the currency you would ike to convert to."
value = gets.chomp
second_currency_oject=Currency.new(value)
puts second_currency_oject.value
puts second_currency_oject.cc

convert(first_currency_object.value, second_currency_oject.value)
