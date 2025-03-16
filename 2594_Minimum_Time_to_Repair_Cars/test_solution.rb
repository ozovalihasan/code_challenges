require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#repair_cars' do
    examples.each_slice(2).each_with_index do |(ranks, cars), index|
      it 'returns the minimum time taken to repair all the cars' do
        expect(repair_cars(ranks, cars)).to eq(results[index])
      end
    end
  end
end
