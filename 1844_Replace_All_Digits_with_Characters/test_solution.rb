require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#replace_digits' do
    examples.each_with_index do |s, index|
      it "returns s after replacing all digits" do
        expect(replace_digits(s)).to eq(results[index])
      end
    end
  end
end
