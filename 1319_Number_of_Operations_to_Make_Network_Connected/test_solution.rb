require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#make_connected' do
    examples.each_slice(2).each_with_index do |(n, connections), index|
      it "returns the minimum number of times you need to do this in order to make all the computers connected" do
        expect(make_connected(n, connections)).to eq(results[index])
      end
    end
  end
end
