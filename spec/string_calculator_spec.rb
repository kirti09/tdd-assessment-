require_relative '../lib/string_calculator'

RSpec.describe StringCalculator do
	describe '.add' do
		it 'returns 0 for an empty string' do
			expect(StringCalculator.add("")).to eq(0)
		end

    it 'returns the number itself when one number is given' do
      expect(StringCalculator.add("1")).to eq(1)
    end

    it 'returns the sum of two comma-separated numbers' do
      expect(StringCalculator.add("1,5")).to eq(6)
    end

    it 'returns the sum of four comma-separated numbers' do
      expect(StringCalculator.add("1,2,3,4")).to eq(10)
    end

    it 'handles new lines between numbers' do
      expect(StringCalculator.add("1\n2,3")).to eq(6)
    end

    it 'supports custom delimiters' do
      expect(StringCalculator.add("//;\n1;2")).to eq(3)
    end

    it 'raises an error for single negative number' do
      expect { StringCalculator.add("1,-2,3,4") }
        .to raise_error("negative numbers not allowed -2")
    end

    it 'raises an error for multiple negative numbers' do
      expect { StringCalculator.add("1,-2,3,-4") }
        .to raise_error("negative numbers not allowed -2, -4")
    end
	end
end
