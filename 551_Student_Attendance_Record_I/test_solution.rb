require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#check_record' do
    examples.each_with_index do |s, index|
      it 'returns true if the student is eligible for an attendance award, or false otherwise' do
        expect(check_record(s)).to eq(results[index])
      end
    end
  end
end
