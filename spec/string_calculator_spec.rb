require 'rspec'
require_relative '../services/string_calculator'

RSpec.describe StringCalculator do

  before do
    @str_calculator = StringCalculator.new
  end

  describe '#add numbers' do
    it 'should returns 0 for an empty string' do
      expect(@str_calculator.add('')).to eq(0)
    end
  end
end
