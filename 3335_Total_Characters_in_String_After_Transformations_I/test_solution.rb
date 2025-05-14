require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#length_after_transformations' do
    examples.each_slice(2).each_with_index do |(str, transform_count), index|
      it "returns the length of the resulting string after exactly t transformations" do
        expect(length_after_transformations(str, transform_count)).to eq(results[index])
      end
    end
  end
end
