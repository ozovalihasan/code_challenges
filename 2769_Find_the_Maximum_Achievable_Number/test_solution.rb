require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#the_maximum_achievable_x' do
    examples.each_slice(2).each_with_index do |(num, t), index|
      it 'returns the maximum possible achievable number' do
        expect(the_maximum_achievable_x(num, t)).to eq(results[index])
      end
    end
  end
end
