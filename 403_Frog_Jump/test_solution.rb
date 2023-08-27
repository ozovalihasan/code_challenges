require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#can_cross' do
    examples.each_with_index do |stones, index|
      it "returns whether the frog can cross the river by landing on the last stone" do
        expect(can_cross(stones)).to eq(results[index])
      end
    end
  end
end
