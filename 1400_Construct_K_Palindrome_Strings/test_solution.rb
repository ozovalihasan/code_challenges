require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#can_construct' do
    examples.each_slice(2).with_index do |(str, palindrome_count), index|
      it 'returns true if you can use all the characters in s to construct k palindrome strings or false otherwise' do
        expect(can_construct(str, palindrome_count).intersection(results[index])).to eq(results[index])
      end
    end
  end
end
