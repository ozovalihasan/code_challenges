require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#count_symmetric_integers' do
    examples.each_slice(2).each_with_index do |(low, high), index|
      it "returns the number of symmetric integers in the range [low, high]" do
        expect(count_symmetric_integers(low, high)).to eq(results[index])
      end
    end
  end
end
