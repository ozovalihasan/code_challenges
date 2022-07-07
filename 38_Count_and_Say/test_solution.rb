require_relative './solution'
require_relative '../read_test_files'

describe "Solution" do
  challenge_name = "38_Count_and_Say"
  examples, results = read_test_files(challenge_name)

  describe '#count_and_say' do
    examples.each_with_index do |example, index|  
      it "returns a string for the counted numbers" do
        expect(count_and_say(example)).to eq(results[index])
      end
    end
  end

end

