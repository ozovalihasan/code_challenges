require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#find_content_children' do
    examples.each_slice(2).each_with_index do |(g, s), index|
      it "returns the maximum number" do
        expect(find_content_children(g, s)).to eq(results[index])
      end
    end
  end
end
