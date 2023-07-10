require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#decrypt' do
    examples.each_slice(2).each_with_index do |(code, k), index|
      it 'returns the decrypted code to defuse the bomb' do
        expect(decrypt(code, k)).to eq(results[index])
      end
    end
  end
end
