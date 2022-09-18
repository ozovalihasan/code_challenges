require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#tallest_billboard' do
    examples.each_with_index do |rods, index|
      it 'returns the largest possible height of your billboard installation' do
        expect(tallest_billboard(rods)).to eq(results[index])
      end
    end
  end
end

