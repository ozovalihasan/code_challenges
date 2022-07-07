require_relative './solution'

describe "Solution" do
  examples = File.read('./40_Combination_Sum_II/examples.txt').split.map {|example| eval(example)}
  results = File.read('./40_Combination_Sum_II/expected_results.txt').split.map {|result| eval(result)}

  describe '#combination_sum2' do
    examples.each_slice(2).each_with_index do |(candidates, target), index|  
      it "returns all uniq arrays if their elements sum equals to the target" do
        expect(combination_sum2(candidates, target)).to eq(results[index])
      end
    end
  end

end
