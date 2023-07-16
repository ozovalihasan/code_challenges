require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#smallest_sufficient_team' do
    examples.each_slice(2).each_with_index do |(req_skills, people), index|
      it 'returns any sufficient team of the smallest possible size' do
        expect(smallest_sufficient_team(req_skills, people)).to match_array(results[index])
      end
    end
  end
end
