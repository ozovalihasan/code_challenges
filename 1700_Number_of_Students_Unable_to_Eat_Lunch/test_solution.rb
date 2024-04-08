require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#count_students' do
    examples.each_slice(2).each_with_index do |(students, sandwiches), index|
      it "returns the number of students that are unable to eat" do
        expect(count_students(students, sandwiches)).to eq(results[index])
      end
    end
  end
end
