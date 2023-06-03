require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#remove_stars' do
    examples.each_slice(4).each_with_index do |(n, head_id, manager, inform_time), index|
      it 'returns the number of minutes needed to inform all the employees about the urgent news' do
        expect(num_of_minutes(n, head_id, manager, inform_time)).to eq(results[index])
      end
    end
  end
end
