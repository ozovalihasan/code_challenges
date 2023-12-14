require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#find_center' do
    examples.each_with_index do |edges, index|
      it "returns the center of the given star graph" do
        expect(find_center(edges)).to eq(results[index])
      end
    end
  end
end
