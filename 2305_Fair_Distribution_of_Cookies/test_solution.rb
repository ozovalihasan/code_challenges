require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#distribute_cookies' do
    examples.each_slice(2).each_with_index do |(cookies, k), index|
      it 'returns the minimum unfairness of all distributions' do
        expect(distribute_cookies(cookies, k)).to eq(results[index])
      end
    end
  end
end
