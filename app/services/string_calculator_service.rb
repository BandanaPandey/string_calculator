# The StringCalculatorService class provides a method to add numbers from a string input.
# It supports custom delimiters and handles empty input strings.
class StringCalculatorService
  # Adds the numbers in the given string.
  #
  # @param numbers [String] the string containing numbers to add, separated by delimiters.
  # @return [Integer] the sum of the numbers in the string. Returns 0 if the string is empty.
  def add(numbers)
    return 0 if numbers.strip.empty?

    numbers.split(delimiter(numbers)).map(&:to_i).sum
  end

  private

  # Determines the delimiter used in the input string.
  #
  # @param input [String] the input string containing numbers and possibly a custom delimiter.
  # @return [Regexp, String] the delimiter to use for splitting the input string.
  def delimiter(input)
    return input[2] if input.match?("//(.*)\n(.*)")
    %r([,\n])
  end
end