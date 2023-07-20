# @param {Integer[]} asteroids
# @return {Integer[]}
def asteroid_collision(asteroids)
  index = 0
  stack = []

  asteroids.each do |asteroid|
    stack << asteroid

    loop do
      break unless stack[-2]&.positive? && stack[-1]&.negative?

      if stack.last(2).sum > 0
        stack.pop
      elsif stack.last(2).sum.zero?
        stack.pop(2)
      else
        stack.delete_at(-2)
      end
    end    
  end

  stack
end