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
    @stack << @stack.pop + @stack.pop
  end

  def minus
    temp = @stack.pop
    @stack << @stack.pop - temp
  end

  def divide
  end

  def value
    @stack[-1]
  end

  def times
    @stack << @stack.pop * @stack.pop
  end

  def tokens
  end

  def evaluate
  end
end
