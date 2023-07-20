require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#asteroid_collision' do
    examples.each_with_index do |asteroids, index|
      it 'returns the state of the asteroids after all collisions' do
        expect(asteroid_collision(asteroids)).to eq(results[index])
      end
    end
  end
end
