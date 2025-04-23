class StringCalculator

  # just to invoke it directly(without creating instance) creating a class method
  def self.add(numbers)
    return 0 if numbers.empty?
    # handle any amount of comma separated numbers
    numbers.split(",").map(&:to_i).sum
  end
end