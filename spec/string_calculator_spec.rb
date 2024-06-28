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

  it 'should returns the number itself for a single number' do
    expect(@str_calculator.add('1')).to eq(1)
    expect(@str_calculator.add('4')).to eq(4)
  end

  it 'should returns the sum of two numbers separated by a comma' do
    expect(@str_calculator.add('3, 5')).to eq(8)
  end

  it 'should returns the sum of multiple numbers separated by commas' do
    expect(@str_calculator.add("2,2,3")).to eq(7)
    expect(@str_calculator.add("4,5,6,8")).to eq(23)
  end
end
