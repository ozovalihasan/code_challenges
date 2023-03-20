require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#dest_city' do
    examples.each_with_index do |paths, index|
      it 'returns the destination city, that is, the city without any path outgoing to another city' do
        expect(dest_city(paths)).to eq(results[index])
      end
    end
  end
end
