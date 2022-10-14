require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#sort_people' do
    examples.each_slice(2).each_with_index do |(names, heights), index|
      it "returns names sorted in descending order by the people's heights" do
        expect(sort_people(names, heights)).to eq(results[index])
      end
    end
  end
end
