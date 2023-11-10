require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#restore_array' do
    examples.each_with_index do |adjacent_pairs, index|
      it "returns the original array nums" do
        expect(restore_array(adjacent_pairs)).to eq(results[index])
      end
    end
  end
end
