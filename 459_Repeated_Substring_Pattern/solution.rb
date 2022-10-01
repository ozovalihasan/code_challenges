# # @param {String} s
# # @return {Boolean}
def repeated_substring_pattern(s)
  s.match?(/^(.+)\1{1,}$/)
end

###################
## 2. Solution
###################
#### Thanks to [rsrs3](https://leetcode.com/rsrs3) for [the solution](https://leetcode.com/problems/repeated-substring-pattern/discuss/94334/easy-python-solution-with-explaination)
# @param {String} s
# @return {Boolean}
# def repeated_substring_pattern(s)
#   (s + s)[1...-1].include? s
# end


###################
## 3. Solution
###################
# # @param {String} s
# # @return {Boolean}
# def repeated_substring_pattern(s)
#   1.upto(s.size/2) do |count|
#     next unless (s.size % count).zero?
#     return true if s[0...count] * (s.size / count) == s 
#   end
#   false
# end