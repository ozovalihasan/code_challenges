require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#can_visit_all_rooms' do
    examples.each_with_index do |rooms, index|
      it "returns true if you can visit all the rooms, or false otherwise" do
        expect(can_visit_all_rooms(rooms)).to eq(results[index])
      end
    end
  end
end
