class RPNCalculator
  # TODO: your code goes here!
  attr_accessor :number

  def initialize
    @stack = []
  end

  def push(number)
    @stack << number
  end

  def plus
    unless @stack == []
      @stack << @stack.pop + @stack.pop
    else
      raise 'calculator is empty'
    end
  end

  def minus
    unless @stack == []
      temp = @stack.pop
      @stack << @stack.pop - temp
    else
      raise 'calculator is empty'
    end
  end

  def divide
    unless @stack == []
      temp = @stack.pop.to_f
      @stack << @stack.pop.to_f / temp
    else
      raise 'calculator is empty'
    end
  end

  def value
    unless @stack == []
      @stack[-1]
    else
      raise 'calculator is empty'
    end
  end

  def times
    unless @stack == []
      @stack << @stack.pop * @stack.pop
    else
      raise 'calculator is empty'
    end
  end

  def tokens(string)
    string = string.split(" ")
    operator = ["*","-","/","+"]
    digits = ("0".."9").to_a
    (0...string.length).each do |idx|
      string[idx] = string[idx].to_i if digits.include?(string[idx])
      string[idx] = string[idx].to_sym if operator.include?(string[idx])
    end
    string
  end

  def evaluate(string)
    
  end
end
