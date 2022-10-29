require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#largest_overlap' do
    examples.each_slice(2).each_with_index do |(plant_time, grow_time), index|
      it "returns the earliest possible day where all seeds are blooming" do
        expect(earliest_full_bloom(plant_time, grow_time)).to eq(results[index])
      end
    end
  end
end
