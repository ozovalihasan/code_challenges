require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#count_unguarded' do
    examples.each_slice(4).each.with_index do |(row_num, col_num, guards, walls), index|
      it 'returns the number of unoccupied cells that are not guarded' do
        expect(count_unguarded(row_num, col_num, guards, walls)).to eq(results[index])
      end
    end
  end
end
