# @param {Integer[]} cookies
# @param {Integer} k
# @return {Integer}
def distribute_cookies(cookies, k)
  return cookies.max if k == cookies.length
  
  @k = k
  @cookies = cookies.sort
  @max_collected_cookies = Float::INFINITY
  
  @count_people = { 0 => @k}
  @count_people.default = 0
  check_cookie(0)

  @max_collected_cookies
end

def check_cookie(index)
  unless @cookies[index]
    @max_collected_cookies = @count_people.keys.max if @max_collected_cookies > @count_people.keys.max
    
    return
  end

  cookie = @cookies[index]
  @count_people.keys.each do |current_cookie|
    collected_cookie = current_cookie + cookie
    next if collected_cookie >= @max_collected_cookies

    update_result(current_cookie, collected_cookie)
    check_cookie(index + 1)
    update_result(collected_cookie, current_cookie)
  end

end

def update_result(previous_val, new_val)
  @count_people[previous_val] -= 1
  @count_people.delete(previous_val) if @count_people[previous_val].zero?
  @count_people[new_val] += 1
end