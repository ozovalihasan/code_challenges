require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#final_prices' do
    examples.each_with_index do |prices, index|
      it 'returns an integer array answer where answer[i] is the final price ' \
         'you will pay for the ith item of the shop, considering the special discount' do
           expect(final_prices(prices)).to match_array(results[index])
         end
    end
  end
end
