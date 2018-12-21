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

  def self.find_ids_with_one_non_matching_char(input)
    ids_with_one_non_matching_char = []
    comparison = input.combination(2).to_a
    comparison.each do |compare|
      if non_matching_characters(compare[0], compare[1]) == 1
        ids_with_one_non_matching_char << compare[0]
        ids_with_one_non_matching_char << compare[1]
      end
    end
    ids_with_one_non_matching_char
  end

  def self.non_matching_characters(id1, id2)
    counter = 0
    index = 0
    while index < id1.length
      if id1[index] != id2[index]
        counter += 1
      end
      index += 1
    end
    counter
  end
end
