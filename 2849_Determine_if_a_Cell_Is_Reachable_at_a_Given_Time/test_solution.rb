require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#is_reachable_at_time' do
    examples.each_slice(5).each_with_index do |(sx, sy, fx, fy, t), index|
      it "returns true if you can reach cell (fx, fy) after exactly t seconds, or false otherwise" do
        expect(is_reachable_at_time(sx, sy, fx, fy, t)).to eq(results[index])
      end
    end
  end
end
