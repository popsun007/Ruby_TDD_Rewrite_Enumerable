require_relative 'my_enumerable'

class Array
  include MyEnumerable
end

RSpec.describe MyEnumerable do
  describe "my_each" do
    it "goes through each element and performs the block of code" do
      arr = [12, 24, 8, 9]
      output = []
      arr.my_each { |x| output << x + 20 }
      expect(output).to eq([32, 44, 28, 29])
    end
  end

  describe "my_select" do
    it "returns new array that meets condition" do
      arr = [12, 24, 8, 9]
      output = arr.my_select { |x| x > 10 }
      expect(output).to eq([12, 24])
    end
  end

  describe "my_reject" do
    it "returns new array that didn't meet specified condition" do
      arr = [12, 24, 8, 9]
      output = arr.my_reject { |x| x > 10 }
      expect(output).to eq([8, 9])
    end
  end

  describe "my_map" do
    it "returns new array with each element modified by block" do
      arr = [1, 2, 3]
      output = arr.my_map { |num| num * 2 }
      expect(output).to eq([2, 4, 6])
    end
  end
end