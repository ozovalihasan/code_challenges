require_relative 'solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe 'ProductOfNumbers' do
    examples.each_slice(2).each_with_index do |(actions, params), index|
      it 'returns ProductOfNumbers' do
        product_of_numbers = nil

        actions.zip(params).each_with_index do |(action, param), index2|
          case action
          when 'ProductOfNumbers'
            product_of_numbers = ProductOfNumbers.new
          when 'add'
            product_of_numbers.add(*param)
          when 'getProduct'
            expect(product_of_numbers.get_product(*param)).to eq(results[index][index2])
          end
        end
      end
    end
  end
end
