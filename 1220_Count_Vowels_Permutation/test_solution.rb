require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#count_vowel_permutation' do
    examples.each_with_index do |n, index|
      it 'returns the count how many strings of length n can be formed under some defined rules' do
        expect(count_vowel_permutation(n)).to eq(results[index])
      end
    end
  end
end
