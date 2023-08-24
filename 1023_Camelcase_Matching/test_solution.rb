require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#camel_match' do
    examples.each_slice(2).each_with_index do |(queries, pattern), index|
      it 'returns a boolean array answer where answer[i] is true' do
        expect(camel_match(queries, pattern)).to eq(results[index])
      end
    end
  end
end
