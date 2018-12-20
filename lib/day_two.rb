class InventoryManager

  def self.check_sum(input)
    duplicate_counter = input.sum { |id| id_includes_char_with_multiple(id, 2) }
    triplicate_counter = input.sum { |id| id_includes_char_with_multiple(id, 3) }
    duplicate_counter * triplicate_counter
  end

  def self.convert_file_to_array(file_name)
    IO.readlines(file_name)
  end

  def self.id_includes_char_with_multiple(id, multiple)
    ids = id.chars.uniq
    ids.each do |char|
      return 1 if id.count(char) == multiple
    end
    0
  end
end
