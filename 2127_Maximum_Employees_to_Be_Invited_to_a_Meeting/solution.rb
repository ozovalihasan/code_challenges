# @param {Integer[]} favorite
# @return {Integer}
def maximum_invitations(favorite)
  @favorite = favorite
  @subordinates = Array.new(favorite.size) { [] }
  @visited = Array.new(favorite.size, false)
  @cycle_start = Array.new(favorite.size)

  favorite.each_with_index do |fav, employee|
    @subordinates[fav] << employee
  end

  max_from_pairs = calculate_max_from_mutual_pairs(favorite)
  max_from_cycle = calculate_max_from_cycles(favorite)

  [max_from_pairs, max_from_cycle].max
end

private

def calculate_max_from_mutual_pairs(favorite)
  favorite.size.times.sum do |employee|
    next 0 if @visited[employee]

    favorite_emp = favorite[employee]
    next 0 unless favorite[favorite_emp] == employee

    @visited[favorite_emp] = true
    chain_from_first = calculate_chain_length(employee)
    @visited[favorite_emp] = false

    @visited[employee] = true
    chain_from_second = calculate_chain_length(favorite_emp)
    @visited[employee] = false

    @visited[favorite_emp] = true
    @visited[employee] = true

    chain_from_first + chain_from_second
  end
end

def calculate_chain_length(employee)
  return 0 if @visited[employee]

  @visited[employee] = true
  return 1 if @subordinates[employee].empty?

  @subordinates[employee].map { |sub| calculate_chain_length(sub) }.max + 1
end

def calculate_max_from_cycles(favorite)
  favorite.size.times.map do |employee|
    next 0 if @visited[employee]

    @cycle_length = 0
    trace_cycle(employee, 0, employee)
    @cycle_length
  end.max
end

def trace_cycle(employee, position, cycle_start)
  if @visited[employee]
    @cycle_length = position - @visited[employee] if @cycle_start[employee] == cycle_start
    return
  end

  @visited[employee] = position
  @cycle_start[employee] = cycle_start
  trace_cycle(@favorite[employee], position + 1, cycle_start)
end
