# String Calculator TDD Kata

### Kata Steps
1. Create a String calculator with a method add(string numbers)
  1. The method can take 0, 1, or 2 numbers and will return their sum.
  2. An empty string will return 0.
  3. Example inputs: `“”, “1”, or “1,2”`
  4. Start with the simplest test case of an empty string. Then 1 number. Then 2 numbers.
  6. Remember to refactor after each passing test.
2. Allow the Add method to handle an unknown number of arguments/numbers.
3. Allow the Add method to handle new lines between numbers (instead of commas).
   1. Example: `“1\n2,3”` should return 6.
4. Calling Add with a negative number will throw an exception “Negatives not allowed: “ listing all negative numbers that were in the list of numbers.
   1. Example `“-1,2”` throws "negatives are not allowed: -1"
   2. Example `“2,-4,3,-5”` throws "negatives are not allowed: -4,-5"
5. Allow the Add method to handle a different delimiter:
   1. To change the delimiter, the beginning of the string will contain a separate line that looks like this: `“//[delimiter]\n[numbers]”`
   2. Example: `“//;\n1;2”` should return 3 (the delimiter is ;)


## Requirements

- [Ruby:3.2](https://www.ruby-lang.org/en/downloads/)
- [Rails:8.0.2](https://rubygems.org/gems/rails)
- [Rspec:3.13](https://rubygems.org/gems/rspec/versions/3.13.0)


## Setup

1. **Clone the repository:**

   ```bash
   git clone https://github.com/BandanaPandey/string_calculator.git
   cd string_calculator
   ```

1. **Install dependencies/gems:**

    ```bash
    bundle
    ```

1. **Run the tests/specs:**

    ```bash
    rspec spec
    ```


## Usage

To use the `StringCalculatorService` service with different cases explicitly:

**Run console:**
`rails c`
   

```ruby
string_calculator = StringCalculatorService.new
string_calculator.add("2,3")
Returns: 5
```


## Following Testcases has been covered
StringCalculatorService
  #add
  - When input is an empty strind: returns 0
  - When input is a single number: returns the number itself
  - When input is multiple numbers: returns the sum of the numbers
  - When input contains new lines between numbers: returns the sum of the numbers
  - When input contains custom delimiter: returns the sum of the numbers
  - When input contains negative numbers: throws exception message with all negative numbers
