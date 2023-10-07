MODULO = (10 ** 9) + 7

# @param {Integer} n
# @param {Integer} m
# @param {Integer} k
# @return {Integer}
def num_of_arrays(n, m, k)
  return 0 if m < k

  @memo = {}
  check(n, m, k, 0) % MODULO
end

def check(arr_size, max_num, search_cost, max)
  
  return @memo[[arr_size, max_num, search_cost, max]] if @memo[[arr_size, max_num, search_cost, max]]
  
  if ((max_num - max) < search_cost) || (arr_size == 0 && search_cost != 0)  
    return @memo[[arr_size, max_num, search_cost, max]] = 0
  end

  if search_cost == 0  
    return @memo[[arr_size, max_num, search_cost, max]] = (max ** arr_size) % MODULO
  end

  arr_size -= 1
  count = (check(arr_size, max_num, search_cost, max) * max) % MODULO
  
  search_cost -= 1
  if search_cost >= 0
    (max + 1).upto(max_num) do |num|
      result = check(arr_size, max_num, search_cost, num) % MODULO
      
      break if result.zero?
      
      count += result 
    end
  end
            
  @memo[[arr_size + 1, max_num, search_cost + 1, max]] = count % MODULO    
end