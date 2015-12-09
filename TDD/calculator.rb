require 'rspec'

class Calculator
  def add(number_one, number_two)
    return number_one + number_two
  end

  def subtract(number_one, number_two)
    return number_one - number_two
  end

  def multiply(number_one, number_two)
    return number_one * number_two
  end

  def divide(dividend, divisor)
    return dividend / divisor
  end

  def square(number)
    return number * number
  end

  def power(number, exponent)
    return number ** exponent
  end
  def add_and_multiply(number_one, number_two, number_three, number_four)
    return (number_one + number_two) * (number_three + number_four)
  end
end


RSpec.describe Calculator do
  describe '#add' do
    it 'should return the sum of two numbers' do
      calc = Calculator.new
      sum = calc.add(4, 6)
      expect(sum).to eq(10)
    end
  end

  describe '#square' do
    it 'should give the square of a number' do
      calc = Calculator.new
      square = calc.square(8)
      expect(square).to eq(64)
    end
  end
  describe '#subtract' do
    it 'should give the result of the first number subtracted by the second number' do
      calc = Calculator.new
      subtracted = calc.subtract(8,2)
      expect(subtracted).to eq(6)
    end
  end
   describe '#multiply' do
    it 'should give the result of the first number multiplied by the second number' do
      calc = Calculator.new
      multiplied = calc.multiply(8,2)
      expect(multiplied).to eq(16)
    end
  end
  describe '#divide' do
    it 'should give the result of the the first number divided by the second number' do
      calc = Calculator.new
      divided = calc.divide(8,2)
      expect(divided).to eq(4)
    end
  end
  describe '#power' do
    it 'should give the result of the first number to the power of the second number' do 
      calc = Calculator.new
      powered = calc.power(4,2)
      expect(powered).to eq(16)
    end
  end
  describe '#add_and_multiply' do
    it 'should take the sum of the first two numbers and the second two numbers and multiply them' do
      calc = Calculator.new
      added_and_multiplied = calc.add_and_multiply(4,2,3,4)
      expect(added_and_multiplied).to eq(42)
    end

  end
end