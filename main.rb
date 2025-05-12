# frozen_string_literal: true

require_relative 'string_calculator/string_calculator'

calculator = StringCalculator.new

puts 'Enter string'
input = gets.chomp
result = calculator.add(input)

puts "Result: #{result}"
