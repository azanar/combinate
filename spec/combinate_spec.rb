RSpec.describe Combinate do
  it "has a version number" do
    expect(Combinate::VERSION).not_to be nil
  end

  it "does not crash on an empty class" do
    expect(described_class.combinate([])).to eq([])
  end

  it "permutates a single array" do
    expect(described_class.combinate([1,2,3])).to eq([[1], [2], [3], [1, 2], [1, 3], [2, 3], [1, 2, 3]])
  end

  it "permutates nested arrays" do
    expect(described_class.combinate([[1],[2],[3]])).to eq([[1], [2], [3], [1, 2], [1, 3], [2, 3], [1, 2, 3]])
  end

  it "permutates complicated examples arrays" do
    expect(described_class.combinate([[1,2],[3,4],[5,6]])).to eq([[1], [2], [3], [4], [5], [6], [1, 3], [1, 4], [2, 3], [2, 4], [1, 5], [1, 6], [2, 5], [2, 6], [3, 5], [3, 6], [4, 5], [4, 6], [1, 3, 5], [1, 3, 6], [1, 4, 5], [1, 4, 6], [2, 3, 5], [2, 3, 6], [2, 4, 5], [2, 4, 6]])
  end
end
