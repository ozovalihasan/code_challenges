require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe 'SnapshotArray' do
    examples.each_slice(2).each_with_index do |(actions, params), index|
      it "returns a class 'SnapshotArray'" do
        snapshot_array = nil
        actions.zip(params).each_with_index do |(action, param), index2|
          if action == "SnapshotArray"
            snapshot_array = SnapshotArray.new(*param)
          elsif action == "set"
            snapshot_array.set(*param)
          elsif action == "snap"
            expect(snapshot_array.snap).to eq(results[index][index2])
          elsif action == "get"
            expect(snapshot_array.get(*param)).to eq(results[index][index2])
          end
        end

      end
    end
  end
end
