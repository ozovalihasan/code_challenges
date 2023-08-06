require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#num_music_playlists' do
    examples.each_slice(3).each_with_index do |(n, goal, k), index|
      it 'returns the valid IP addresses in any order' do
        expect(num_music_playlists(n, goal, k)).to eq(results[index])
      end
    end
  end
end
