# @param {Integer[]} fruits
# @return {Integer}
def total_fruit(fruits)
  fruits = fruits.chunk_while {|type1, type2| type1 == type2}.map {|types| Fruit.new(types)}
  counted_fruits = fruits.first(2)
  total_counts = [ counted_fruits.sum(&:count) ]
  
  fruits[2..]&.each do |fruit|
    unless fruit.type == counted_fruits.at(-2).type
      counted_fruits = counted_fruits.last(1)
      total_counts << counted_fruits.last.count
    end

    total_counts[-1] += fruit.count
    counted_fruits << fruit
  end

  total_counts.max
end

class Fruit
  attr_accessor :count
  attr_reader :type
  
  def initialize(arr)
    @type = arr.first
    @count = arr.size
  end
end