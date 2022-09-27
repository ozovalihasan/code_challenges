require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#get_lucky' do
    examples.each_slice(2).each_with_index do |(s, k), index|
      it "returns the resulting integer after performing the operations " do
        expect(get_lucky(s, k)).to eq(results[index])
      end
    end
  end
end
