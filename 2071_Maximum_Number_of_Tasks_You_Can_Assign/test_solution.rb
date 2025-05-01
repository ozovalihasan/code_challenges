require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#max_task_assign' do
    examples.each_slice(4).each_with_index do |(tasks, workers, pills, strength), index|
      it 'returns the maximum number of tasks that can be completed' do
        expect(max_task_assign(tasks, workers, pills, strength)).to eq(results[index])
      end
    end
  end
end
