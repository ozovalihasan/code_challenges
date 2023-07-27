require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#max_run_time' do
    examples.each_slice(2).each_with_index do |(n, batteries), index|
      it "returns the maximum number of minutes you can run all the n computers simultaneously" do
        expect(max_run_time(n, batteries)).to eq(results[index])
      end
    end
  end
end
