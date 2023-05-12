require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#most_points(' do
    examples.each_with_index do |questions, index|
      it "returns the maximum points you can earn for the exam" do
        expect(most_points(questions)).to eq(results[index])
      end
    end
  end
end
