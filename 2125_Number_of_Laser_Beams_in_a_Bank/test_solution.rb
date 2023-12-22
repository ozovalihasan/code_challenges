require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#number_of_beams' do
    examples.each_with_index do |bank, index|
      it "returns the total number of laser beams in the bank" do
        expect(number_of_beams(bank)).to eq(results[index])
      end
    end
  end
end
