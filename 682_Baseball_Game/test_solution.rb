require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#cal_points' do
    examples.each_with_index do |operations, index|
      it 'returns the sum of all the scores on the record after applying all the operations' do
        expect(cal_points(operations)).to eq(results[index])
      end
    end
  end
end
