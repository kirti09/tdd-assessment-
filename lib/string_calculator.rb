class StringCalculator

  # just to invoke it directly(without creating instance) creating a class method
  def self.add(numbers)
    return 0 if numbers.empty?
  
    delimiter = /[\n,]/
    # As numbers is string so here are the checks
    if numbers.start_with?("//")
      custom_delimiter = numbers.match(%r{//(.)\n})[1]
      numbers = numbers.split("\n", 2).last
      delimiter = /[#{Regexp.escape(custom_delimiter)}\n]/
    end
  
    numbers.split(delimiter).map(&:to_i).sum
  end
end