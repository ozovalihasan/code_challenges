class BrowserHistory

=begin
    :type homepage: String
=end
  def initialize(homepage)
    @pages = [homepage]
    @current_index = 0
  end


=begin
  :type url: String
  :rtype: Void
=end
  def visit(url)
    @current_index += 1
    @pages[@current_index..] = url
  end


=begin
  :type steps: Integer
  :rtype: String
=end
  def back(steps)
    @current_index = [@current_index - steps, 0].max
    @pages[ @current_index ]
  end


=begin
  :type steps: Integer
  :rtype: String
=end
  def forward(steps)
    @current_index = [@current_index + steps, @pages.size - 1].min
    @pages[ @current_index ]
  end


end

# Your BrowserHistory object will be instantiated and called as such:
# obj = BrowserHistory.new(homepage)
# obj.visit(url)
# param_2 = obj.back(steps)
# param_3 = obj.forward(steps)