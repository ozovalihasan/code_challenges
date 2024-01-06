require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#minimum_effort' do
    examples.each_with_index do |tasks, index|
      it "returns the minimum initial amount of energy you will need to finish all the tasks" do
        expect(minimum_effort(tasks)).to eq(results[index])
      end
    end
  end
end
