require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#min_flips_mono_incr' do
    examples.each_with_index do |s, index|
      it 'returns the minimum number of flips to make s monotone increasing' do
        expect(min_flips_mono_incr(s)).to eq(results[index])
      end
    end
  end
end
