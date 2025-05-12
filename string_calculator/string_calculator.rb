require 'byebug'
class StringCalculator
  def add(str)
    return 0 if str.empty?

    str.scan(/\d/).map(&:to_i).sum
  end
end