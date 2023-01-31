require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#best_team_score' do
    examples.each_slice(2).each_with_index do |(scores, ages), index|
      it 'returns the highest overall score of all possible basketball teams' do
        expect(best_team_score(scores, ages)).to eq(results[index])
      end
    end
  end
end
