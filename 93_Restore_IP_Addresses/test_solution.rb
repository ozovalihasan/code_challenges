require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#restore_ip_addresses' do
    examples.each_with_index do |s, index|
      it 'returns the valid IP addresses in any order' do
        expect(restore_ip_addresses(s)).to match_array(results[index])
      end
    end
  end
end
