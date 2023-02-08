require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#validate_stack_sequences' do
    examples.each_slice(2).each_with_index do |(pushed, popped), index|
      it 'returns true if this could have been the result of a sequence of push and pop operations on an initially empty stack' do
        expect(validate_stack_sequences(pushed, popped)).to eq(results[index])
      end
    end
  end
end
