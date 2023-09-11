require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#group_the_people' do
    examples.each_with_index do |group_sizes, index|
      it 'returns a list of groups such that each person i is in a group of size groupSizes[i]' do
        expect(group_the_people(group_sizes)).to match_array(results[index])
      end
    end
  end
end
