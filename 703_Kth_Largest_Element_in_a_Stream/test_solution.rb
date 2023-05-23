require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe 'KthLargest' do
    examples.each_slice(2).each_with_index do |(actions, params), index|
      it "returns the element representing the kth largest element in the stream" do
        kth_largest = nil

        actions.zip(params).each_with_index do |(action, param), index2|
          case action
          when "KthLargest"
            kth_largest = KthLargest.new(*param)
          when "add"
            expect(kth_largest.add(*param)).to eq(results[index][index2])
          end
        end

      end
    end
  end
end
