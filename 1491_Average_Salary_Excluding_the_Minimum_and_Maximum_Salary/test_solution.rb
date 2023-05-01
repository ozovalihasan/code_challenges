require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#average' do
    examples.each_with_index do |salary, index|
      it 'returns the average salary of employees excluding the minimum and maximum salary' do
        expect(average(salary)).to eq(results[index])
      end
    end
  end
end
