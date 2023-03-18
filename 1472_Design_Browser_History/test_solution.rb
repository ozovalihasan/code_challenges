require_relative './solution'
require_relative '../read_test_files'

describe 'Solution' do
  examples, results = read_test_files.values_at(:examples, :results)

  describe 'BrowserHistory' do
    examples.each_slice(2).each_with_index do |(actions, params), index|
      it "returns a class 'BrowserHistory'" do
        browser_history = nil
        actions.zip(params).each_with_index do |(action, (param)), index2|
          if action == "BrowserHistory"
            browser_history = BrowserHistory.new(param)
          elsif action == "visit"
            browser_history.visit(param)
          elsif action == "forward"
            expect(browser_history.forward(param)).to eq(results[index][index2])
          elsif action == "back"
            expect(browser_history.back(param)).to eq(results[index][index2])
          end
        end

      end
    end
  end
end
