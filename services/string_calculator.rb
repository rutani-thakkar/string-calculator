# frozen_string_literal: true

class StringCalculator
  def initialize
    @method_call_count = 0
  end

  def add(numbers)
    @method_call_count += 1

    return 0 if numbers.empty?

    delimiter = /,|\n/
    if numbers.start_with?('//')
      parts = numbers.split("\n", 2)
      delimiter = Regexp.escape(parts[0][2])
      numbers = parts[1]
    end

    numbs = numbers.split(/#{delimiter}/).map(&:to_i)

    negatives = numbs.select { |n| n < 0 }
    raise "negatives numbers not allowed: #{negatives.join(', ')}" if negatives.any?

    numbs.reject { |n| n > 1000 }.sum
  end

  def get_called_count
    @method_call_count
  end
end
