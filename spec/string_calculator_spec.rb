# frozen_string_literal: true

require_relative '../string_calculator/string_calculator'

RSpec.describe StringCalculator do
  describe '#add' do
    it 'returns 0 for an empty string' do
      calc = StringCalculator.new
      expect(calc.add('')).to eq(0)
    end

    it 'returns the number itself when a single number is given' do
      calc = StringCalculator.new
      expect(calc.add('1')).to eq(1)
    end

    it 'returns the sum of two numbers seperated by comma' do
      calc = StringCalculator.new
      expect(calc.add('1, 2')).to eq(3)
    end

    it 'returns the sum of numbers seperated by new line' do
      calc = StringCalculator.new
      expect(calc.add("1\n2,3")).to eq(6)
    end

    it 'returns the sum when input contains numbers separated by different delimiters' do
      calc = StringCalculator.new
      expect(calc.add("//;\n1;2")).to eq(3)
    end

    it 'returns the exception and number if input contains negative' do
      calc = StringCalculator.new
      expect(calc.add('-1, 2')).to eq('negatives not allowed - -1')
    end

    it 'returns the exception and numbers if input contains negative' do
      calc = StringCalculator.new
      expect(calc.add('-1, 2, -3')).to eq('negatives not allowed - -1, -3')
    end

    it 'Numbers bigger than 1000 should be ignored' do
      calc = StringCalculator.new
      expect(calc.add('2, 1001')).to eq(2)
    end
  end
end
