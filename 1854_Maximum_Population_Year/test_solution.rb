require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#maximum_population' do
    examples.each_with_index do |logs, index|
      it 'the earliest year with the maximum population' do
        expect(maximum_population(logs)).to eq(results[index])
      end
    end
  end
end
