require_relative './solution'

describe "Solution" do
  examples = File.read('./36_Valid_Sudoku/examples.txt').split.map {|example| eval(example)}
  results = File.read('./36_Valid_Sudoku/expected_results.txt').split.map {|result| eval(result)}

  describe '#is_valid_sudoku' do
    examples.each_with_index do |example, index|  
      it "returns whether the given array is valid sudoku matrix or not " do
        expect(is_valid_sudoku(example)).to eq(results[index])
      end
    end
  end

end

