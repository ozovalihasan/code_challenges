require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#longest_obstacle_course_at_each_position' do
    examples.each_with_index do |obstacles, index|
      it 'returns an array ans of length n, where ans[i] is the length of the longest obstacle course for index i as described above' do
        expect(longest_obstacle_course_at_each_position(obstacles)).to eq(results[index])
      end
    end
  end
end
