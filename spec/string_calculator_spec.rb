require_relative '../string_calculator/string_calculator'

RSpec.describe StringCalculator do
  describe '#add' do
    it 'returns 0 for an empty string' do
      calc = StringCalculator.new
      expect(calc.add("")).to eq(0)
    end

    it 'returns the number itself when a single number is given' do
      calc = StringCalculator.new
      expect(calc.add("1")).to eq(1)
    end

    it 'returns the sum of two numbers seperated by comma' do
      calc = StringCalculator.new
      expect(calc.add("1, 2")).to eq(3)
    end

    it 'returns the sum of numbers seperated by new line' do
      calc = StringCalculator.new
      expect(calc.add("1\n2,3")).to eq(6)
    end
  end
end
