require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#find_array' do
    examples.each_with_index do |pref, index|
      it 'returns the array arr of size n that satisfies the given conditions' do
        expect(find_array(pref)).to eq(results[index])
      end
    end
  end
end
