require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#sort_items' do
    examples.each_slice(4).each_with_index do |(n, m, group, before_items), index|
      it "returns any solution if there is more than one solution and return an empty list if there is no solution" do
        expect(sort_items(n, m, group, before_items)).to eq(results[index])
      end
    end
  end
end
