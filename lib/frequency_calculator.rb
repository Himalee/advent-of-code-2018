class FrequencyCalculator

  def self.calculate_frequency(input_array)
    input_array.reduce(&:+)
  end

  def self.convert_file_to_array(file_name)
    input_array = IO.readlines(file_name)
    input_array.map(&:to_i)
  end

  def self.first_duplicate_freq(frequency_changes)
    frequencies = [0]

    frequency_changes.cycle do |freq_change|
      sum = frequencies.last + freq_change
      return sum if frequencies.include?(sum)
      frequencies << sum
    end
  end
end
