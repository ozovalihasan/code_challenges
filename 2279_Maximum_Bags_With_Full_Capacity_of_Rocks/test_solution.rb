require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#maximum_bags' do
    examples.each_slice(3).each_with_index do |(capacity, rocks, additional_rocks), index|
      it 'returns the maximum number of bags that could have full capacity after placing the additional rocks in some bags' do
        expect(maximum_bags(capacity, rocks, additional_rocks)).to eq(results[index])
      end
    end
  end
end
