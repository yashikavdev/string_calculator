# frozen_string_literal: true

# string_calculator/string_calculator.rb
class StringCalculator
  def add(str)
    return 0 if str.strip.empty?

    numbers = str.scan(/-?\d+/).map(&:to_i)
    negatives = numbers.select(&:negative?)

    return "negatives not allowed - #{negatives.join(', ')}" if negatives.any?

    numbers.reject { |n| n > 1000 }.sum
  end
end
