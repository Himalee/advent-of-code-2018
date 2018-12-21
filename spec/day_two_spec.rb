require 'day_two'

describe InventoryManager do
  it "contains no duplicates and triplicates" do
    ids = "abcdef"
    expect(InventoryManager.id_includes_char_with_multiple(ids, 2)).to eql(0)
    expect(InventoryManager.id_includes_char_with_multiple(ids, 3)).to eql(0)
  end

  it "contains duplicates and triplicates" do
    ids = "bababc"
    expect(InventoryManager.id_includes_char_with_multiple(ids, 2)).to eql(1)
    expect(InventoryManager.id_includes_char_with_multiple(ids, 3)).to eql(1)
  end

  it "calculates check sum" do
    input = ["aaab", "aabc", "abcc"]
    expect(InventoryManager.check_sum(input)).to eql(2)
  end

  it "winning test" do
    input = InventoryManager.convert_file_to_array("inventory.txt")
    expect(InventoryManager.check_sum(input)).to eql(8892)
  end

  it "compares strings with two char not matching" do
    id1 = "abcde"
    id2 = "axcye"
    expect(InventoryManager.non_matching_characters(id1, id2)).to eql(2)
  end

  it "compares strings with one char not matching" do
    id1 = "fghij"
    id2 = "fguij"
    expect(InventoryManager.non_matching_characters(id1, id2)).to eql(1)
  end

  it "compares four strings and returns ids with one char not matching" do
    id1 = "fghij"
    id2 = "fguij"
    id3 = "abcde"
    id4 = "axcye"
    input = [id1, id2, id3, id4]
    expect(InventoryManager.find_ids_with_one_non_matching_char(input)).to eql(["fghij", "fguij"])
  end

  it "compares seven strings and returns ids with one char not matching" do
    input = ["abcde", "fghij", "klmno", "pqrst", "fguij", "axcye", "wvxyz"]
    expect(InventoryManager.find_ids_with_one_non_matching_char(input)).to eql(["fghij", "fguij"])
  end

  it "second winning test" do
    input = InventoryManager.convert_file_to_array("inventory.txt")
    expect(InventoryManager.find_ids_with_one_non_matching_char(input)).to eql(["zihwtxagsifpbsnwleydukjmqv\n","zihwtxagwifpbsnwleydukjmqv\n"])
  end
end
