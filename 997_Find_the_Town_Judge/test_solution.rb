require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#find_judge' do
    examples.each_slice(2).each_with_index do |(n, trust), index|
      it 'returns the label of the town judge if the town judge exists and can be identified, or returns -1 otherwise' do
        expect(find_judge(n, trust)).to eq(results[index])
      end
    end
  end
end
