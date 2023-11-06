class SeatManager
=begin
  :type n: Integer
=end
  def initialize(n)
    @seats = (1..n).to_a.reverse
  end

=begin
  :rtype: Integer
=end
  def reserve()
    @seats.pop
  end

=begin
  :type seat_number: Integer
  :rtype: Void
=end
  def unreserve(seat_number)
    index = @seats.bsearch_index {|seat| seat < seat_number} || @seats.size
    @seats.insert(index, seat_number)
  end

end

# Your SeatManager object will be instantiated and called as such:
# obj = SeatManager.new(n)
# param_1 = obj.reserve()
# obj.unreserve(seat_number)
