require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#calc_equation' do
    examples.each_slice(3).each_with_index do |(equations, values, queries), index|
      it 'returns the answers to all queries' do
        expect(calc_equation(equations, values, queries)).to eq(results[index])
      end
    end
  end
end
