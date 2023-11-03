require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#build_array' do
    examples.each_slice(2).each_with_index do |(target, n), index|
      it 'returns the stack operations needed to build target following the mentioned rules' do
        expect(build_array(target, n)).to eq(results[index])
      end
    end
  end
end
