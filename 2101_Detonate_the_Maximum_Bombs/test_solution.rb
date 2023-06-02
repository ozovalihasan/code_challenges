require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#maximum_detonation' do
    examples.each_with_index do |bombs, index|
      it "returns the maximum number of bombs that can be detonated if you are allowed to detonate only one bomb" do
        expect(maximum_detonation(bombs)).to eq(results[index])
      end
    end
  end
end
