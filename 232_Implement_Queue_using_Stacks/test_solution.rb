require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe 'MyQueue' do
    examples.each_slice(2).each_with_index do |(actions, params), index|
      it "returns the median value" do
        queue = MyQueue.new

        actions.zip(params).each_with_index do |(action, param), index2|
          case action
          when "push"
            queue.push(*param)
          when "pop"
            expect(queue.pop).to eq(results[index][index2])
          when "peek"
            expect(queue.peek).to eq(results[index][index2])
          when "empty"
            expect(queue.empty).to eq(results[index][index2])
          end
        end

      end
    end
  end
end
