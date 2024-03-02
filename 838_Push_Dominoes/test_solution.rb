require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#push_dominoes' do
    examples.each_with_index do |dominoes, index|
      it "returns a string representing the final state" do
        expect(push_dominoes(dominoes)).to eq(results[index])
      end
    end
  end
end
