require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#shuffle' do
    examples.each_slice(2).each_with_index do |(nums, n), index|
      it "returns the array by shuffling" do
        expect(shuffle(nums, n)).to eq(results[index])
      end
    end
  end
end
