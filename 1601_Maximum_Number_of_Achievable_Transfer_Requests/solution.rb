# @param {Integer} n
# @param {Integer[][]} requests
# @return {Integer}

" I coulndn't solve"
def maximum_requests(n, requests)
  @buildings = Array.new(n) {Hash.new(0)}

  requests.each do |from, to|
    @buildings[from][to] += 1
  end

  @result = 0
  @used = {}
  @used.default = 0
  @buildings.each_index do |(index, _)|
    check_building(index, 0, true)
  end

  @result
  
end

def check_building(building_index, step, started_yet = false)
  
  

  @used[building_index] += 1
  if @used[building_index].zero?
    @used.delete(building_index)
  end

  if !started_yet && @used[building_index].nil?
    @result = step if @result < step 
    @buildings.select {|val| val != {}}.each_index do |(index, _)|
      check_building(index, step, true)
    end

    return
  end
  
  step += 1

  @buildings[building_index].clone.each do |(next_building_index, val)|
    @used[next_building_index] -= 1
    if @used[next_building_index].zero?
      @used.delete(next_building_index)
    end
    @buildings[building_index][next_building_index] -= 1

    if @buildings[building_index][next_building_index].zero?
      @buildings[building_index].delete(next_building_index)
    end
    check_building(next_building_index, step)

    @buildings[building_index][next_building_index] += 1
    @used[next_building_index] += 1
    if @used[next_building_index].zero?
      @used.delete(next_building_index)
    end
  end
  
  @used[building_index] -= 1
  if @used[building_index].zero?
    @used.delete(building_index)
  end

end