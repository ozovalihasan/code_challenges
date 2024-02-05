require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#check_string' do
    examples.each_with_index do |str, index|
      it "returns true if every 'a' appears before every 'b' in the string" do
        expect(check_string(str)).to eq(results[index])
      end
    end
  end
end
