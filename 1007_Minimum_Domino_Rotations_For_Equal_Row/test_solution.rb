require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#min_domino_rotations' do
    examples.each_slice(2).each_with_index do |(tops, bottoms), index|
      it "returns the minimum number of rotations so that all the values in tops are the same"\
         ", or all the values in bottoms are the same" do
        expect(min_domino_rotations(tops, bottoms)).to eq(results[index])
      end
    end
  end
end
