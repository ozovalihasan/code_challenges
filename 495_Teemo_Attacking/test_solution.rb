require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#find_poisoned_duration' do
    examples.each_slice(2).each_with_index do |(time_series, duration), index|
      it "returns the total number of seconds that Ashe is poisoned" do
        expect(find_poisoned_duration(time_series, duration)).to eq(results[index])
      end
    end
  end
end
