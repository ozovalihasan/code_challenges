require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#pyramid_transition' do
    examples.each_slice(2).each_with_index do |(bottom, allowed), index|
      it 'returns true if you can build the pyramid all the way to the top such that every triangular pattern in the pyramid is in allowed, or false otherwise' do
        expect(pyramid_transition(bottom, allowed)).to eq(results[index])
      end
    end
  end
end
