require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#simplify_path' do
    examples.each_with_index do |path, index|
      it 'returns the simplified canonical path' do
        expect(simplify_path(path)).to eq(results[index])
      end
    end
  end
end
