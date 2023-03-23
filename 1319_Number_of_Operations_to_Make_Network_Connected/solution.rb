# @param {Integer} n
# @param {Integer[][]} connections
# @return {Integer}
def make_connected(n, connections)
  return -1 if connections.size < (n - 1)

  computers = 0.upto(n-1).map { Computer.new }

  connections.each do |first, second|
    computers[first].connected_computers << computers[second]
    computers[second].connected_computers << computers[first]
  end

  computer_lands = 0

  0.upto( n-1 ).each do |index|
    next if computers[index].checked

    computer_lands += 1
    
    check_computer(computers[index])
  end

  computer_lands - 1
end

def check_computer(computer)
  return if computer.checked

  computer.checked = true
  
  computer.connected_computers.each {|next_computer| check_computer(next_computer)  }
end

class Computer
  attr_accessor :connected_computers, :checked
  
  def initialize
    @connected_computers = []
    @checked = false
  end
end