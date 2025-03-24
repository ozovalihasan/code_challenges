require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#count_days' do
    examples.each_slice(2).each_with_index do |(days, meetings), index|
      it 'returns the count of days when the employee is available for work but no meetings are scheduled' do
        expect(count_days(days, meetings)).to eq(results[index])
      end
    end
  end
end
