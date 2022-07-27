require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#can_construct' do
    examples.each_slice(2).each_with_index do |(ransom_note, magazine), index|
      it 'returns true if ransomNote can be constructed by using the letters from magazine' do
        expect(can_construct(ransom_note, magazine)).to eq(results[index])
      end
    end
  end
end
