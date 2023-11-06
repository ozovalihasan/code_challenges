require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe 'SeatManager' do
    examples.each_slice(2).each_with_index do |(actions, params), index|
      it "returns a class 'SeatManager'" do
        seat_manager = nil
        actions.zip(params).each_with_index do |(action, param), index2|
          case action
          when 'SeatManager'
            seat_manager = SeatManager.new(*param)
          when 'unreserve'
            seat_manager.unreserve(*param)
          when 'reserve'
            expect(seat_manager.reserve).to eq(results[index][index2])
          end
        end
      end
    end
  end
end
