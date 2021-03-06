require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#combination_sum2' do
    examples.each_slice(2).each_with_index do |(candidates, target), index|
      it 'returns all uniq arrays if their elements sum equals to the target' do
        expect(combination_sum2(candidates, target).map(&:sort)).to eq(results[index])
      end
    end
  end
end
