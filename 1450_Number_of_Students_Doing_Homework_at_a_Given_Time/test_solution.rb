require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#busy_student' do
    examples.each_slice(3).each_with_index do |(start_time, end_time, query_time), index|
      it 'returns the number of steps in the shortest path from the entrance to the nearest exit, or -1 if no such path exists' do
        expect(busy_student(start_time, end_time, query_time)).to eq(results[index])
      end
    end
  end
end
