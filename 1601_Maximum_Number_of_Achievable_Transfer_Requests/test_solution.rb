require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#maximum_requests' do
    examples.each_slice(2).each_with_index do |(n, requests), index|
      it "returns the maximum number of achievable requests" do
        expect(maximum_requests(n, requests)).to eq(results[index])
      end
    end
  end
end
