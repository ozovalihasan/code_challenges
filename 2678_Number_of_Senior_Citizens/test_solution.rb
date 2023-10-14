require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#count_seniors' do
    examples.each_with_index do |details, index|
      it "returns the number of passengers who are strictly more than 60 years old" do
        expect(count_seniors(details)).to eq(results[index])
      end
    end
  end
end
