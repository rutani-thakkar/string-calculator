# frozen_string_literal: true

class StringCalculator
  def initialize
    @method_call_count = 0
  end

  def add(numbers)
    @method_call_count += 1

    return 0 if numbers.empty?
    numbs = numbers.split(/,|\n/).map(&:to_i)

    negatives = numbs.select { |n| n < 0 }
    raise "negatives numbers not allowed: #{negatives.join(', ')}" if negatives.any?
    numbs.reject { |n| n > 1000 }.sum
  end

  def get_called_count
    @method_call_count
  end
end
