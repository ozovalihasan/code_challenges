require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#is_path_crossing' do
    examples.each_with_index do |path, index|
      it 'returns true if the path crosses itself at any point' do
        expect(is_path_crossing(path)).to eq(results[index])
      end
    end
  end
end
