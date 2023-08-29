require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#best_closing_time' do
    examples.each_with_index do |customers, index|
      it "returns the earliest hour at which the shop must be closed to incur a minimum penalty" do
        expect(best_closing_time(customers)).to eq(results[index])
      end
    end
  end
end
