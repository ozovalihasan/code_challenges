require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#hamming_weight' do
    examples.each_with_index do |num, index|
      it "returns the number of '1' bits" do
        expect(hamming_weight(num.to_s.to_i(2))).to eq(results[index])
      end
    end
  end
end
