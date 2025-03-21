require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#minimum_cost' do
    examples.each_slice(3).each_with_index do |(recipes, ingredients, supplies), index|
      it 'returns a list of all the recipes that you can create' do
        expect(find_all_recipes(recipes, ingredients, supplies)).to eq(results[index])
      end
    end
  end
end
