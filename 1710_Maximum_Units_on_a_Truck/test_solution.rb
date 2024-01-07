require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#maximum_units' do
    examples.each_slice(2).each_with_index do |(box_types, truck_size), index|
      it "returns the maximum total number of units that can be put on the truck" do
        expect(maximum_units(box_types, truck_size)).to eq(results[index])
      end
    end
  end
end
