require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#eval_rpn' do
    examples.each_with_index do |tokens, index|
      it 'returns the value of an arithmetic expression in Reverse Polish Notation' do
        expect(eval_rpn(tokens)).to eq(results[index])
      end
    end
  end
end
