require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe 'NumberContainers' do
    examples.each_slice(2).each_with_index do |(actions, params), index|
      it 'returns the smallest index for the given number in the system' do
        number_containers = nil

        actions.zip(params).each_with_index do |(action, param), index2|
          case action
          when 'UndergroundSystem'
            number_containers = NumberContainers.new
          when 'change'
            number_containers.change(*param)
          when 'find'
            expect(number_containers.find(*param)).to eq(results[index][index2])
          end
        end
      end
    end
  end
end
