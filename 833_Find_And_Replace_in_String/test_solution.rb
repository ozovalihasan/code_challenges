require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#find_replace_string' do
    examples.each_slice(4).each_with_index do |(s, indices, sources, targets), index|
      it "returns the resulting string after performing all replacement operations on s" do
        expect(find_replace_string(s, indices, sources, targets)).to eq(results[index])
      end
    end
  end
end
