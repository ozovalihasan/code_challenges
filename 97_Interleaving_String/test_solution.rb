require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#is_interleave' do
    examples.each_slice(3).each_with_index do |(s1, s2, s3), index|
      it "returns whether s3 is formed by an interleaving of s1 and s2" do
        expect(is_interleave(s1, s2, s3)).to eq(results[index])
      end
    end
  end
end
