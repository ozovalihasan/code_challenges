require_relative './solution'
require_relative '../read_test_files'

describe "Solution" do
  challenge_name = "45_Jump_Game_II"
  examples, results = read_test_files(challenge_name)

  describe '#jump' do
    examples.each_with_index do |nums, index|  
      it "returns the minimum number of jumps to reach the last index" do
        expect(jump(nums)).to eq(results[index])
      end
    end
  end

end

