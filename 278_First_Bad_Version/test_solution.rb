require_relative './solution'
require_relative '../read_test_files'
require_relative './is_bad_version'


describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#first_bad_version' do
    examples.each_slice(2).each_with_index do |(n, _), index|
      it 'returns the first bad version of the product' do
        @index = index
        expect(first_bad_version(n)).to eq(results[index])
      end
    end
  end
end
