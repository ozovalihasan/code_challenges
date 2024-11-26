require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#find_champion' do
    examples.each_slice(2).each.with_index do |(n, edges), index|
      it 'returns the team that will be the champion of the tournament if there is a unique champion' do
        expect(find_champion(n, edges)).to eq(results[index])
      end
    end
  end
end
