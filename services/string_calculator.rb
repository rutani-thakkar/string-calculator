# frozen_string_literal: true

class StringCalculator
  def add(numbers)
    return 0 unless numbers.match(/^\d+$/)
    numbers.to_i
  end
end
