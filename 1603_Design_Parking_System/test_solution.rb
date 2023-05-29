require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe 'ParkingSystem' do
    examples.each_slice(2).each_with_index do |(actions, params), index|
      it "returns a summary of the integers in the stream currently as a list of disjoint intervals [starti, endi]" do
        parking_system = nil

        actions.zip(params).each_with_index do |(action, param), index2|
          case action
          when "ParkingSystem"
            parking_system = ParkingSystem.new(*param)
          when "addCar"
            expect(parking_system.add_car(*param)).to eq(results[index][index2])
          end
        end

      end
    end
  end
end
