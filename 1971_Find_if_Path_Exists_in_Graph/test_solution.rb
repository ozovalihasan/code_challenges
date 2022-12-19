require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#valid_path' do
    examples.each_slice(4).each_with_index do |(n, edges, source, destination), index|
      it "returns true if there is a valid path from source to destination, or false otherwise" do
        expect(valid_path(n, edges, source, destination)).to eq(results[index])
      end
    end
  end
end
