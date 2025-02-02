require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#construct2_d_array' do
    examples.each_slice(3).each_with_index do |(original, m, n), index|
      it 'returns the label of the town judge if the town judge exists and can be identified, or returns -1 otherwise' do
        expect(construct2_d_array(original, m, n)).to match_array(results[index])
      end
    end
  end
end
