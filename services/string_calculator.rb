# frozen_string_literal: true

class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?
    numbs = numbers.split(/,|\n/).map(&:to_i)

    negatives = numbs.select { |n| n < 0 }
    raise "negatives numbers not allowed: #{negatives.join(', ')}" if negatives.any?
    numbs.sum
  end
end
