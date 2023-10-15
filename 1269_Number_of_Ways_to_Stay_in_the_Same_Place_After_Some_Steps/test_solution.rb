require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#num_ways' do
    examples.each_slice(2).each_with_index do |(steps, arr_len), index|
      it "returns the number of ways such that your pointer is still at index 0 after exactly steps steps" do
        expect(num_ways(steps, arr_len)).to eq(results[index])
      end
    end
  end
end
