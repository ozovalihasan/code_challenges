require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#get_last_moment' do
    examples.each_slice(3).each_with_index do |(n, left, right), index|
      it 'returns the moment when the last ant(s) fall out of the plank' do
        expect(get_last_moment(n, left, right)).to eq(results[index])
      end
    end
  end
end
