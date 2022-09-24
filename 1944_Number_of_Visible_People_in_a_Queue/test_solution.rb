require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#can_see_persons_count' do
    examples.each_with_index do |heights, index|
      it "returns an array answer of length n where answer[i] is the number of people the ith person can see to their right in the queue" do
        expect(can_see_persons_count(heights)).to eq(results[index])
      end
    end
  end
end
