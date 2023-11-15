require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#maximum_element_after_decrementing_and_rearranging' do
    examples.each_with_index do |arr, index|
      it "returns the maximum possible value of an element in arr after performing the operations to satisfy the conditions." do
        expect(maximum_element_after_decrementing_and_rearranging(arr)).to eq(results[index])
      end
    end
  end
end
