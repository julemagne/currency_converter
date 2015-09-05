#Currency class

class DifferentCurrencyCodeError < Exception
end

class NotaNumberError < Exception
end

class NoCurrencyError < Exception
end

class CurrencyNotFoundError < Exception
end

def isitnumber(input)
  Float(input) rescue false
end

class Currency

  attr_reader :value
  attr_reader :cc

  def initialize(value, cc = 'pickles')
    if isitnumber(value) && cc != 'pickles'
      @value = value.to_f
      @cc = cc
    elsif isitnumber(value) && cc == 'pickles'
      raise NoCurrencyError, "You did not enter a currency."
    else
      x = value[0]
      case x
      when "$"
        @cc = :USD
      when "€"
        @cc = :EUR
      when "£"
        @cc = :GBP
      when "¥"
        @cc = :JPY
      when "฿"
        @cc = :THB
      else
        raise CurrencyNotFoundError, "Your currency is not supported."
      end
      value[0] = ''
      @value = value.to_f
    end
  end

  def +(other_money)
    if @cc != other_money.cc
      raise DifferentCurrencyCodeError, "DifferentCurrencyCodeError: You must first convert both currencies to the same currency."
    else
      Currency.new(@value + other_money.value, @cc)
    end
  end

  def -(other_money)
    if @cc != other_money.cc
      raise DifferentCurrencyCodeError, "DifferentCurrencyCodeError: You must first convert both currencies to the same currency."
    else
      Currency.new(@value - other_money.value, @cc)
    end
  end

  def *(number)
     if !isitnumber(number)
       raise NotaNumberError, "NotaNumberError: You did not enter a number."
     else
       Currency.new(@value * number, @cc)
     end
  end

  def ==(other_money)
     if @cc != other_money.cc
       raise DifferentCurrencyCodeError, "DifferentCurrencyCodeError: You must first convert both currencies to the same currency."
     elsif @value == other_money.value
       true
     else
       false
     end
  end

  def compared_currency_value()
    cc_value = @cc
  end

end
