require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#judge_circle' do
    examples.each_with_index do |moves, index|
      it 'returns true if the robot returns to the origin after it finishes all of its moves, or false otherwise' do
        expect(judge_circle(moves)).to eq(results[index])
      end
    end
  end
end
