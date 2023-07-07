require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#max_consecutive_answers' do
    examples.each_slice(2).each_with_index do |(answer_key, k), index|
      it "returns the maximum number of consecutive 'T's or 'F's in the answer key after performing the operation at most k times" do
        expect(max_consecutive_answers(answer_key, k)).to eq(results[index])
      end
    end
  end
end
