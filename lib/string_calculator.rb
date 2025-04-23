class StringCalculator

  # just to invoke it directly(without creating instance) creating a class method
  def self.add(numbers)
    return 0 if numbers.empty?
    # handles new line between the numbers
    numbers.split(/[\n,]/).map(&:to_i).sum
  end
end