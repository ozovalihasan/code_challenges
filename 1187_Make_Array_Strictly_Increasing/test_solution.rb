require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#make_array_increasing' do
    examples.each_slice(2).each_with_index do |(arr1, arr2), index|
      it 'returns the minimum number of operations (possibly zero) needed to make arr1 strictly increasing' do
        expect(make_array_increasing(arr1, arr2)).to eq(results[index])
      end
    end
  end
end
