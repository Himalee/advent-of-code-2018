require 'frequency_calculator'

describe FrequencyCalculator do

  it 'adds -1 to the current frequency' do
    expect(FrequencyCalculator.calculate_frequency([-1])).to eql(-1)
  end

  it 'adds -1, +5 to the current frequency' do
    expect(FrequencyCalculator.calculate_frequency([-1, +5])).to eql(4)
  end

  it 'adds -1, +5, +12, -2 to the current frequency' do
    expect(FrequencyCalculator.calculate_frequency([-1, +5, +12, -2])).to eql(14)
  end

  it 'adds -1, +5, +12, -20 to the current frequency' do
    expect(FrequencyCalculator.calculate_frequency([-1, +5, +12, -20])).to eql(-4)
  end

  it 'winning test!!!!!' do
    input_array = FrequencyCalculator.convert_file_to_array('input.txt')
    expect(FrequencyCalculator.calculate_frequency(input_array)).to eql(454)
  end

  it 'returns 0' do
    input_array = [+1, -1]
    expect(FrequencyCalculator.first_duplicate_freq(input_array)).to eql(0)
  end

  it 'returns 10' do
    input_array = [+3, +3, +4, -2, -4]
    expect(FrequencyCalculator.first_duplicate_freq(input_array)).to eql(10)
  end

  it 'returns 5' do
    input_array = [-6, +3, +8, +5, -6]
    expect(FrequencyCalculator.first_duplicate_freq(input_array)).to eql(5)
  end

  it 'returns 14' do
    input_array = [+7, +7, -2, -7, -4]
    expect(FrequencyCalculator.first_duplicate_freq(input_array)).to eql(14)
  end

  it 'winning second test!!!!!' do
    input_array = FrequencyCalculator.convert_file_to_array('input.txt')
    expect(FrequencyCalculator.first_duplicate_freq(input_array)).to eql(566)
  end

end
