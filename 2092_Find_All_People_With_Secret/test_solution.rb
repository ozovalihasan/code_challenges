require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#find_all_people' do
    examples.each_slice(3).each_with_index do |(n, meetings, first_person), index|
      it 'returns a list of all the people that have the secret after all the meetings have taken place' do
        expect(find_all_people(n, meetings, first_person)).to eq(results[index])
      end
    end
  end
end
