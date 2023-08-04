require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#word_break' do
    examples.each_slice(2).each_with_index do |(flowers, people), index|
      it 'returns an integer array answer of size n' do
        expect(full_bloom_flowers(flowers, people)).to eq(results[index])
      end
    end
  end
end
