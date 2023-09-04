require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#remove_duplicate_letters' do
    examples.each_with_index do |s, index|
      it "returns the string 's' by removing duplicate letters so that every letter appears once and only once" do
        expect(remove_duplicate_letters(s)).to eq(results[index])
      end
    end
  end
end
