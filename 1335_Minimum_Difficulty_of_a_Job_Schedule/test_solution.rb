require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#min_difficulty' do
    examples.each_slice(2).each_with_index do |(job_difficulty, d), index|
      it 'returns the minimum difficulty of a job schedule' do
        expect(min_difficulty(job_difficulty, d)).to eq(results[index])
      end
    end
  end
end
