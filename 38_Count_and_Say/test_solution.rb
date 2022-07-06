require_relative './solution'

describe "Solution" do
  examples = File.read('./38_Count_and_Say/examples.txt').split.map {|example| eval(example)}
  results = File.read('./38_Count_and_Say/expected_results.txt').split.map {|result| eval(result)}

  describe '#count_and_say' do
    examples.each_with_index do |example, index|  
      it "returns a string for the counted numbers" do
        expect(count_and_say(example)).to eq(results[index])
      end
    end
  end

end

