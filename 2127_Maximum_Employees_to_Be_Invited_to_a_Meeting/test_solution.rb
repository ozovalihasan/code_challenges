require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#maximum_invitations' do
    examples.each_with_index do |favorite, index|
      it 'returns the maximum number of employees that can be invited to the meeting' do
        expect(maximum_invitations(favorite)).to eq(results[index])
      end
    end
  end
end
