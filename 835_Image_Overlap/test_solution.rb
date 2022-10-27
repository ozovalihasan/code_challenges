require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe '#largest_overlap' do
    examples.each_slice(2).each_with_index do |(img1, img2), index|
      it "returns the largest possible overlap" do
        expect(largest_overlap(img1, img2)).to eq(results[index])
      end
    end
  end
end
