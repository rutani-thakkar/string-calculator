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

  it 'should returns the sum of numbers separated by commas and new lines' do
    expect(@str_calculator.add("1\n4,3")).to eq(8)
    expect(@str_calculator.add("4\n5,6\n7")).to eq(22)
  end

  it 'raises an exception for negative numbers' do
    expect { @str_calculator.add('1, -4') }.to raise_error("negatives numbers not allowed: -4")
    expect { @str_calculator.add('-1, -2, 3') }.to raise_error("negatives numbers not allowed: -1, -2")
  end

  it 'should returns the count of how many times add has been called' do
    @str_calculator.add('1,2')
    @str_calculator.add('3')
    @str_calculator.add('5')
    expect(@str_calculator.get_called_count).to eq(3)
  end

  it 'should ignores numbers greater than 1000' do
    expect(@str_calculator.add('2, 1001, 3')).to eq(5)
    expect(@str_calculator.add('1000, 1001')).to eq(1000)
    expect(@str_calculator.add('1001, 1002, 7')).to eq(7)
  end
end
