#Currency class

def isitnumber(input)
  Float(input) rescue false
end

class Currency

  attr_accessor :value
  attr_accessor :cc

  #write method to define currency

  def initialize(value, cc = nil)
    @value = value
    @cc = cc
    #call method in initialize to define currency
    define_currency if @cc == nil
  end

  def define_currency
    if cc != nil
        @value = value
        @cc = cc
        break
    else
      if (input.downcase.include? "$" || input.downcase.include? "usd" || input.downcase.include? "dollar")
        @cc = :USD
        input = input.gsub(/[^\d\.]/, "")
        #RegEx //searches for everything inside and replaces with what is inside "".
        #^ means everything except, d means digits, and . means .
        @value = input.to_f
      elsif (input.downcase.include? "eur" || input.downcase.include? "€")
        @cc = :EUR
        input = input.gsub(/[^\d\.]/, "")
        @value = input.to_f
      elsif (input.downcase.include? "gbp" || input.downcase.include? "£" || input.downcase.include? "pound")
        @cc = :GBP
        input = input.gsub(/[^\d\.]/, "")
        @value = input.to_f
      elsif (input.downcase.include? "yen" || input.downcase.include? "jpy" || input.downcase.include? "円" || input.downcase.include? "圓" || input.downcase.include? "¥")
        @cc = :JPY
        input = input.gsub(/[^\d\.]/, "")
        @value = input.to_f
      elsif (input.downcase.include? "baht" || input.downcase.include? "บาท" || input.downcase.include? "฿" || input.downcase.include? "thb")
        @cc = :THB
        input = input.gsub(/[^\d\.]/, "")
        @value = input.to_f
      else
        puts "You did not enter an acceptable value."
      end
    end
  end

  def +(number)
    @value += number require @cc == cc rescue "DifferentCurrencyCodeError: You must first convert both currencies to the same currency."
  end

  def -(number)
    @value -= number require @cc == cc rescue "DifferentCurrencyCodeError: You must first convert both currencies to the same currency."
  end

  def *(number)
      @value = @value*number require Float(number) || Integer(number) rescue
  end

  def ==(compared_number)
     true if @value == compared_number.value && @cc == compared_number.cc
  end


end
