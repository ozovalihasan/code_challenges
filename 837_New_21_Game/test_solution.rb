require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#new21_game' do
    examples.each_slice(3).each_with_index do |(n, k, max_pts), index|
      it 'returns the probability that Alice has n or fewer points' do
        expect(new21_game(n, k, max_pts)).to eq(results[index])
      end
    end
  end
end
