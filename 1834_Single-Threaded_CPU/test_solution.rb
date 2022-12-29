require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#get_order' do
    examples.each_with_index do |tasks, index|
      it 'returns the order in which the CPU will process the tasks' do
        expect(get_order(tasks)).to eq(results[index])
      end
    end
  end
end
