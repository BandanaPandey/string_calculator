# The StringCalculatorService class provides a method to add numbers from a string input.
# It supports custom delimiters and handles empty input strings.
class StringCalculatorService
  # Adds the numbers in the given string.
  #
  # @param numbers [String] A string containing numbers separated by delimiters.
  # @return [Integer] The sum of the numbers.
  # @raise [RuntimeError] If the string contains negative numbers.
  #
  # @example
  #   add("1,2,3") #=> 6
  #   add("") #=> 0
  #   add("//;\n1;2") #=> 3
  #   add("1,-2,3") #=> raises "negatives are not allowed: -2"
  # @param numbers [String] the string containing numbers to add, separated by delimiters.
  # @return [Integer] the sum of the numbers in the string. Returns 0 if the string is empty.
  def add(numbers)
    return 0 if numbers.strip.empty?

    delimiter_pattern = delimiter(numbers)
    numbers = numbers.split(delimiter_pattern).map(&:to_i)

    negatives = negative_numbers(numbers)
    raise "negatives are not allowed: #{negatives.join(',')}" unless negatives.empty?

    numbers.sum
  end

  private

  # This method takes an array of numbers and returns a new array containing only the negative numbers.
  #
  # @param numbers [Array<Numeric>] An array of numeric values.
  # @return [Array<Numeric>] An array containing only the negative numbers from the input array.
  def negative_numbers(numbers)
    numbers.select(&:negative?)
  end

  # Determines the delimiter used in the input string.
  #
  # @param input [String] the input string containing numbers and possibly a custom delimiter.
  # @return [Regexp, String] the delimiter to use for splitting the input string.
  def delimiter(input)
    return input[2] if input.match?("//(.*)\n(.*)")
    %r([,\n])
  end
end