require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#check_if_prerequisite' do
    examples.each_slice(3).each_with_index do |(num_courses, prerequisites, queries), index|
      it 'returns a boolean array answer, where answer[j] is the answer to the jth query' do
        expect(check_if_prerequisite(num_courses, prerequisites, queries)).to eq(results[index])
      end
    end
  end
end
