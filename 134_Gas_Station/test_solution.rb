require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#can_complete_circuit' do
    examples.each_slice(2).each_with_index do |(gas, cost), index|
      it "returns the starting gas station's index if it is possible to travel around the circuit once in the clockwise direction" do
        expect(can_complete_circuit(gas, cost)).to eq(results[index])
      end
    end
  end
end
