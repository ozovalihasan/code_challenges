require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#make_good' do
    examples.each_with_index do |s, index|
      it "returns the string after making it good" do
        expect(make_good(s)).to eq(results[index])
      end
    end
  end
end
