require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#frequency_sort' do
    examples.each_with_index do |s, index|
      it "returns the sorted string" do
        expect(frequency_sort(s)).to eq(results[index])
      end
    end
  end
end
