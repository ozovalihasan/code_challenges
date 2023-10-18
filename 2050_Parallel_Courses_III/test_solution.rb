require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#minimum_time' do
    examples.each_slice(3).each_with_index do |(n, relations, time), index|
      it "returns the minimum number of months needed to complete all the courses" do
        expect(minimum_time(n, relations, time)).to eq(results[index])
      end
    end
  end
end
