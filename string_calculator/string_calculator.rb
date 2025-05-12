class StringCalculator
  def add(str)
    return 0 if str.empty?

    if str.size == 1
      return str.to_i
    end
  end
end