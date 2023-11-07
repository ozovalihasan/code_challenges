require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#eliminate_maximum' do
    examples.each_slice(2).each_with_index do |(dist, speed), index|
      it "returns the maximum number of monsters that you can eliminate before you lose" do
        expect(eliminate_maximum(dist, speed)).to eq(results[index])
      end
    end
  end
end
