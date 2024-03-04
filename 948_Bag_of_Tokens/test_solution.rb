require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#bag_of_tokens_score' do
    examples.each_slice(2).each_with_index do |(tokens, power), index|
      it 'returns the maximum possible score you can achieve after playing any number of tokens' do
        expect(bag_of_tokens_score(tokens, power)).to eq(results[index])
      end
    end
  end
end
