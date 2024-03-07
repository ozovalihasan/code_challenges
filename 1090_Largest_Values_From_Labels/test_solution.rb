require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#largest_vals_from_labels' do
    examples.each_slice(4).each_with_index do |(values, labels, num_wanted, use_limit), index|
      it 'returns the maximum possible achievable number' do
        expect(largest_vals_from_labels(values, labels, num_wanted, use_limit)).to eq(results[index])
      end
    end
  end
end
