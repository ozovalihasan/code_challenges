# @param {Integer} n
# @param {Integer[][]} meetings
# @return {Integer}
def most_booked(n, meetings)
  @times = [[Float::INFINITY, n]]
  usage_counts = Array.new(n, 0)
  @meetings = meetings.sort_by(&:first)
  @available_rooms = (0...n).to_a
  
  until @meetings.empty?
    meeting_start, meeting_end = @meetings.shift

    update_used_rooms(meeting_start)
    next_available_time, next_available_room = find_room_with_next_available_time(meeting_start, meeting_end)
    time_index = @times.bsearch_index do |checked_time, checked_room| 
      if next_available_time == checked_time
        checked_room > next_available_room
      else
        next_available_time < checked_time 
      end
    end
    @times.insert(time_index, [next_available_time, next_available_room])
    usage_counts[next_available_room] += 1
  end

  max_usage = usage_counts.max
  usage_counts.index(max_usage)
end

def find_room_with_next_available_time(meeting_start, meeting_end)
  available_time = nil
  next_available_room = nil
  if @available_rooms.empty?
    available_time, next_available_room = @times.shift
  else
    available_time = meeting_start
    next_available_room = @available_rooms.shift
  end
  next_available_time = available_time + meeting_end - meeting_start
  [next_available_time, next_available_room]
end

def update_used_rooms(meeting_start)
  until @times.first.first > meeting_start
    _, room = @times.shift
    room_index = @available_rooms.bsearch_index {|checked_room| checked_room > room} || @available_rooms.size
    @available_rooms.insert(room_index, room)
  end
end
