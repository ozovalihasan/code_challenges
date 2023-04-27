require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#bulb_switch' do
    examples.each_with_index do |n, index|
      it 'returns the number of bulbs that are on after n rounds' do
        expect(bulb_switch(n)).to eq(results[index])
      end
    end
  end
end
