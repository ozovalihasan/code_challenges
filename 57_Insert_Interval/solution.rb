# @param {Integer[][]} intervals
# @param {Integer[]} new_interval
# @return {Integer[][]}
def insert(intervals, new_interval)
  intervals = intervals.map {|interval| Interval.new(interval)}
  new_interval = Interval.new(new_interval)

  index = intervals.bsearch_index { |interval| interval.start > new_interval.start }
  index = intervals.size unless index
 
  intervals.insert(index, new_interval)
  ref_index = index.zero? ? 0 : index - 1

  2.times do
    
    ref_el = intervals[ref_index]
    next_index = ref_index + 1
    next_el = intervals[ next_index ]

    while next_el && (ref_el.finish >= next_el.start)
      ref_el.finish = [ next_el.finish, ref_el.finish ].max

      next_index += 1
      next_el = intervals[ next_index ]
    end

    intervals.slice!((ref_index + 1)..(next_index - 1))
    ref_index += 1
  end
  
  intervals.map(&:to_a)
end

class Interval
  attr_accessor :start, :finish
  
  def initialize(boundaries)
    @start = boundaries.first
    @finish = boundaries.last
  end

  def to_a
    [start, finish]
  end
end