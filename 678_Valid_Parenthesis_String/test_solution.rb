require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#check_valid_string' do
    examples.each_with_index do |str, index|
      it "returns true if str is valid" do
        expect(check_valid_string(str)).to eq(results[index])
      end
    end
  end
end
