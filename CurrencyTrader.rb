# CurrencyTrader class

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
    a = @current.c.keys.to_a
    b = []
    counter = 0
    while counter < a.count
      b << (@old.c[a[counter]] / @current.c[a[counter]])
      counter += 1
    end
    howtofindthebest = Hash[a.zip(b)]
    usehighesttolowest = howtofindthebest.values.to_a.sort
    highest = usehighesttolowest[-1]
    puts "Invest your money in #{howtofindthebest.key(highest)} and you will have the highest return."
  end
end
