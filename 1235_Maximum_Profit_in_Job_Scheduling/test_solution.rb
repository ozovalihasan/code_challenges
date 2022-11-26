require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#job_scheduling' do
    examples.each_slice(3).each_with_index do |(start_time, end_time, profit), index|
      it "returns the maximum profit you can take such that there are no two jobs in the subset with overlapping time range" do
        expect(job_scheduling(start_time, end_time, profit)).to eq(results[index])
      end
    end
  end
end
