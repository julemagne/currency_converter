#Currency class

def isitnumber(input)
  Float(input) rescue false
end

class Currency

  attr_accessor :value
  attr_accessor :cc

  def initialize(value, cc)
    @value = value
    @currency_code = cc
  end

  def +(number)
    if @cc == cc
      @value += number
    else
      puts "DifferentCurrencyCodeError: You must first convert both currencies to the same currency."
    end
  end

  def -(number)
    if @cc == cc
      @value -= number
    else
      puts "DifferentCurrencyCodeError: You must first convert both currencies to the same currency."
    end
  end

  def *(number)
      @value *= number if Float(number) || Integer(number) : rescue
  end


end
