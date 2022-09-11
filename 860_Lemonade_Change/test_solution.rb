require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#lemonade_change' do
    examples.each_with_index do |bills, index|
      it 'true if you can provide every customer with the correct change' do
        expect(lemonade_change(bills)).to eq(results[index])
      end
    end
  end
end
