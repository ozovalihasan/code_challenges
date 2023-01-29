class LFUCache
  attr_reader :frequencies, :nums, :max_capacity
  attr_accessor :tail, :head
=begin
  :type capacity: Integer
=end
  def initialize(max_capacity)
    @max_capacity = max_capacity
    @frequencies = {}
    @nums = {}
    @tail = nil
    @head = nil
  end


=begin
  :type key: Integer
  :rtype: Integer
=end
  def get(key)
    
    return -1 if self.max_capacity.zero?
    return -1 unless @nums[key]

    num = @nums[key]
    frequency = add_frequency(num.frequency)
    remove_num(num)
    add_num(num.key, num.val, frequency)
    num.val
  end


=begin
  :type key: Integer
  :type value: Integer
  :rtype: Void
=end
  def put(key, value)
    return if self.max_capacity.zero?
    
    if @nums[key]
      num = @nums[key]
      frequency = add_frequency(num.frequency)
      remove_num(num)
      add_num(key, value, frequency)
      
    else
      check_capacity
      frequency = add_frequency(nil)
      add_num(key, value, frequency)
    end

  end


  def check_capacity
    if @nums.size == max_capacity
      frequency = self.tail
      remove_num(frequency.tail)
    end
  end

  def add_num(key, val, frequency)
    num = Num.new(key, val)
    @nums[key] = num
    num.frequency = frequency
    
    if frequency.head
      frequency.head.next = num
      num.previous = frequency.head
      frequency.head = num
    else
      frequency.head = num
      frequency.tail = num
    end
    
  end

  def add_frequency(previous_frequency)
    val = if previous_frequency
            previous_frequency.val + 1
          else
            1
          end 

    return @frequencies[val] if @frequencies[val]
    
    frequency = Frequency.new(val)
    @frequencies[val] = frequency

    if previous_frequency
      
      frequency.previous = previous_frequency
      if self.head == previous_frequency
        previous_frequency.next = frequency
        self.head = frequency
      else
        next_frequency = previous_frequency.next
        frequency.next = next_frequency
        previous_frequency.next = frequency
        if next_frequency
          next_frequency.previous = frequency
        end
      end
    else
      if self.tail 
        frequency.next = self.tail
        self.tail.previous = frequency
        self.tail = frequency
      else
        self.tail = frequency 
        self.head = frequency 
      end
    end

    frequency
  end

  def remove_num(num)
    frequency = num.frequency
    
    if num != frequency.head && num != frequency.tail
      previous_num = num.previous
      next_num = num.next
      previous_num.next = next_num
      next_num.previous = previous_num
    elsif num == frequency.head && num == frequency.tail
      remove_frequency(frequency)
    elsif num == frequency.head
      frequency.head = num.previous
      num.previous.next = nil
    elsif num == frequency.tail
      frequency.tail = num.next
      num.next.previous = nil
    end

    @nums.delete(num.key)
  end

  def remove_frequency(frequency)
    if frequency != self.head && frequency != self.tail
      previous_frequency = frequency.previous
      next_frequency = frequency.next
      previous_frequency.next = next_frequency
      next_frequency.previous = previous_frequency
    elsif frequency == self.head && frequency == self.tail
      self.head = nil
      self.tail = nil
    elsif frequency == self.head
      self.head = frequency.previous
      frequency.previous.next = nil
    elsif frequency == self.tail
      self.tail = frequency.next
      frequency.next.previous = nil
    end

    @frequencies.delete(frequency.val)
  end
end

# Your LFUCache object will be instantiated and called as such:
# obj = LFUCache.new(capacity)
# param_1 = obj.get(key)
# obj.put(key, value)

class Frequency
  attr_reader :val
  attr_accessor :tail, :head, :previous, :next
  
  def initialize(val)
    @val = val
    @head = nil
    @tail = nil
    @next = nil
    @previous = nil
  end
end

class Num
  attr_reader :val, :key
  attr_accessor :previous, :next, :frequency

  def initialize(key, val)
    @key = key
    @val = val
    @previous = nil    
    @next = nil
    @frequency = nil
  end
end