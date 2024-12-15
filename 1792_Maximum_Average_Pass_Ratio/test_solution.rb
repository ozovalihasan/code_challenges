require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#max_average_ratio' do
    examples.each_slice(2).with_index do |(classes, extra_students), index|
      it 'returns the maximum possible average pass ratio after assigning the extraStudents students' do
        expect(max_average_ratio(classes, extra_students)).to eq(results[index])
      end
    end
  end
end
