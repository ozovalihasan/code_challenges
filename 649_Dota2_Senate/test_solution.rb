require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#predict_party_victory' do
    examples.each_with_index do |senate, index|
      it "returns which party will finally announce the victory and change the Dota2 game" do
        expect(predict_party_victory(senate)).to eq(results[index])
      end
    end
  end
end
