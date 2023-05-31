require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe 'UndergroundSystem' do
    examples.each_slice(2).each_with_index do |(actions, params), index|
      it "returns UndergroundSystem keeping track of customer travel times between different stations" do
        underground_system = nil

        actions.zip(params).each_with_index do |(action, param), index2|
          case action
          when "UndergroundSystem"
            underground_system = UndergroundSystem.new
          when "checkIn"
            underground_system.check_in(*param)
          when "checkOut"
            underground_system.check_out(*param)
          when "getAverageTime"
            expect(underground_system.get_average_time(*param).round(5)).to eq(results[index][index2])
          end
        end

      end
    end
  end
end
