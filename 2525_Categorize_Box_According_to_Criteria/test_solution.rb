require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#categorize_box' do
    examples.each_slice(4).each_with_index do |(length, width, height, mass), index|
      it "returns a string representing the category of the box" do
        expect(categorize_box(length, width, height, mass)).to eq(results[index])
      end
    end
  end
end
