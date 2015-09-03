#currency_converter_normal
require './Currency'
require './CurrencyConverter'

puts "Enter the amount and currency that you would like to convert from."
from = gets.chomp.to_sym
puts "Enter the currency you wouldl ike to convert to."
to = gets.chomp.to_sym
