require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#count_and_say' do
    examples.each_with_index do |example, index|
      it 'returns a string for the counted numbers' do
        expect(count_and_say(example)).to eq(results[index])
      end
    end
  end
end
