require 'string_calculator'

RSpec.describe 'String Calculator' do
  describe '#add' do
    it 'returns 0 for an empty string' do
      expect(add("")).to eq(0)
    end

    it 'returns the number for a single number' do
      expect(add("1")).to eq(1)
    end

    it 'returns the sum for two numbers' do
      expect(add("1,5")).to eq(6)
    end

    it 'returns the sum when numbers are separated by new lines' do
      expect(add("1\n2,3")).to eq(6)
    end

    it 'supports custom delimiters' do
      expect(add("//;\n1;2")).to eq(3)
    end

    it 'throws an exception for negative numbers' do
      expect { add("1,-2,3") }.to raise_error("negative numbers not allowed -2")
    end

    it 'throws an exception for multiple negative numbers' do
      expect { add("1,-2,-3") }.to raise_error("negative numbers not allowed -2,-3")
    end
  end
end
