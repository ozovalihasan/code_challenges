require_relative './solution'
require_relative '../read_test_files'

class MountainArray

  def initialize(arr)
    @arr = arr
  end
  
  def get(index)
    @arr[index]
  end
  
  def length()
    @arr.size
  end
end

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#findInMountainArray' do
    examples.each_slice(2).each_with_index do |(mountain_arr, target), index|
      it 'returns the number of ways to build the array arr under the mentioned conditions' do
        mountain = MountainArray.new(mountain_arr)
        expect(findInMountainArray(target, mountain)).to eq(results[index])
      end
    end
  end
end
