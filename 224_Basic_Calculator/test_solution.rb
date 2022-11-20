require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#calculate' do
    examples.each_with_index do |s, index|
      it "returns the result of the evaluation" do
        expect(calculate(s)).to eq(results[index])
      end
    end
  end
end
