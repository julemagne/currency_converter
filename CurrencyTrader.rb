#CurrencyTrader class

class CurrencyTrader

  attr_reader :current
  attr_reader :old
  attr_reader :starting

  def initialize(converter, converter2, first_currency_object)
    @current = converter
    @old = converter2
    @starting = first_currency_object
  end

  def invest
    puts @current.c.to_a
    puts @old.c.to_a
    puts @starting.value
    puts @starting.cc
    howtofindthebest[@current.c.key.each] = ((@old.c.value.each / @current.c.value.each))
    puts howtofindthebest.to_a #and get error :(
    # howtofindthebest = hash of current keys => old values / current values
    # usehighesttolowest = howtofindthebest.values.to_a.sort
    # puts usehighesttolowest
  end




end
