require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#array_sign' do
    examples.each_with_index do |nums, index|
      it 'returns signFunc(product)' do
        expect(array_sign(nums)).to eq(results[index])
      end
    end
  end
end
