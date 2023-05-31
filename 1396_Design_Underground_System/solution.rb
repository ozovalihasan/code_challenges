class UndergroundSystem
  def initialize()
    @customers = {}
    @stations = {}
  end


=begin
  :type id: Integer
  :type station_name: String
  :type t: Integer
  :rtype: Void
=end
  def check_in(id, station_name, t)
    @customers[id] = [station_name, t]
  end


=begin
  :type id: Integer
  :type station_name: String
  :type t: Integer
  :rtype: Void
=end
  def check_out(id, station_name, t)
    customer = @customers.delete(id)
    @stations[customer.first] = {} unless @stations[customer.first] 

    (@stations[customer.first][station_name] ||= []) << (t - customer.last)
  end


=begin
  :type start_station: String
  :type end_station: String
  :rtype: Float
=end
  def get_average_time(start_station, end_station)
    station = @stations[start_station][end_station]
    station.sum.to_f / station.size
  end
end

# Your UndergroundSystem object will be instantiated and called as such:
# obj = UndergroundSystem.new()
# obj.check_in(id, station_name, t)
# obj.check_out(id, station_name, t)
# param_3 = obj.get_average_time(start_station, end_station)