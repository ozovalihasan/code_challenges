# @param {Integer[][]} rooms
# @return {Boolean}
def can_visit_all_rooms(rooms)
  open_room = 0
  current = rooms[open_room]
  entered_rooms = [0]

  until current.empty?
    current.map! do |key| 
      if entered_rooms.include? key
        next [] 
      else 
        entered_rooms << key
        next rooms[key] 
      end
    end
    current.flatten!
  end

  entered_rooms.size == rooms.size
end