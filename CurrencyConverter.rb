#class CurrencyConverter

class CurrencyConverter

  def initialize (c)
    @c = {USD: 1.0, EUR: 0.89805, GBP: 0.65534, JPY: 119.959, THB: 32.8280}
  end

  def convert
    if !@c.values.include?(c)
      puts "UnknownCurrencyCodeError: #{@c} does not have a recorded value."
    else
      currency_from = @c(key)
      currency_to = @c(key)
      @value = @value * currency_to/currency_from
      puts "Your converted value is #{@value}."
  end



end




access @code from dolla.code

def
  if dolla.code

end
