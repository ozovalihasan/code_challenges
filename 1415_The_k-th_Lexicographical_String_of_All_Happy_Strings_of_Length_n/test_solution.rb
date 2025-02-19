require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#get_happy_string' do
    examples.each_slice(2).each_with_index do |(num, order), index|
      it 'returns the kth string of this list or return an empty string if there are less than k happy strings of length n' do
        expect(get_happy_string(num, order)).to eq(results[index])
      end
    end
  end
end
