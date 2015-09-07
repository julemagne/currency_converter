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

    # howtofindthebest = {}
    # # ||= means if false/nil, =

    # foo[:USD] ||= []
    # foo[:USD] << val

    # @old.c.keys.each do |key|
    #  ratio = @old.c[key] / @current.c[key]
    # end

    # howtofindthebest[@current.c.key.each] = ((@old.c.value.each / @current.c.value.each))
    @current.c.keys.each do |key|
      a = Array.new
      a << key
    end

    puts a
    howtofindthebest = Hash[a.zip(b)]
    puts howtofindthebest.to_a #and get error :(
    # howtofindthebest = hash of current keys => old values / current values
    # usehighesttolowest = howtofindthebest.values.to_a.sort
    # puts usehighesttolowest
  end




end
