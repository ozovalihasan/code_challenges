require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#get_hint' do
    examples.each_slice(2).each_with_index do |(secret, guess), index|
      it "returns the hint for your friend's guess" do
        expect(get_hint(secret, guess)).to eq(results[index])
      end
    end
  end
end
