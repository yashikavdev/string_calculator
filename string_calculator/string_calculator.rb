class StringCalculator
  def add(str)
    return 0 if str.strip.empty?

    numbers = str.scan(/-?\d+/).map(&:to_i)
    negatives = numbers.select { |n| n.negative? }

    return "negatives not allowed - #{negatives.join(', ')}" if negatives.any?

    numbers.sum
  end
end