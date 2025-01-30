require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#magnificent_sets' do
    examples.each_slice(2).with_index do |(n, edges), index|
      it 'the maximum number of groups (i.e., maximum m) into which you can divide the nodes' do
        expect(magnificent_sets(n, edges)).to eq(results[index])
      end
    end
  end
end
