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
end
