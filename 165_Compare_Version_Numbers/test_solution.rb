require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#compare_version' do
    examples.each_slice(2).each_with_index do |(version1, version2), index|
      it "returns version1 <=> version2" do
        expect(compare_version(version1, version2)).to eq(results[index])
      end
    end
  end
end
