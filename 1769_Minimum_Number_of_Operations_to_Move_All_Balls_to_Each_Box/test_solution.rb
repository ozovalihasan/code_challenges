require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#min_operations' do
    examples.each_with_index do |boxes, index|
      it 'returns an array answer of size n, where answer[i] is the minimum number of operations needed to move all the balls to the ith box' do
        expect(min_operations(boxes)).to eq(results[index])
      end
    end
  end
end
