require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe 'MyStack' do
    examples.each_slice(2).each_with_index do |(actions, params), index|
      it "returns a class 'MyStack'" do
        my_stack = nil
        actions.zip(params).each_with_index do |(action, param), index2|
          if action == "MyStack"
            my_stack = MyStack.new(*param)
          elsif action == "push"
            my_stack.push(*param)
          elsif action == "top"
            expect(my_stack.top).to eq(results[index][index2])
          elsif action == "pop"
            expect(my_stack.pop).to eq(results[index][index2])
          elsif action == "empty"
            expect(my_stack.empty).to eq(results[index][index2])
          end
        end

      end
    end
  end
end
