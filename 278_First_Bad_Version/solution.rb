# The is_bad_version API is already defined for you.
# @param {Integer} version
# @return {boolean} whether the version is bad
# def is_bad_version(version):

# @param {Integer} n
# @return {Integer}
def first_bad_version(n)
  lower = 1
  upper = n
  version = (upper + lower) / 2
  
  until version == lower
    
    if is_bad_version(version)
      upper = version
    else
      lower = version
    end

    version = (upper + lower) / 2
    
  end
  
  is_bad_version(version) ? lower : upper 
end

##############
# 2. Solution
##############

# # The is_bad_version API is already defined for you.
# # @param {Integer} version
# # @return {boolean} whether the version is bad
# # def is_bad_version(version):

# # @param {Integer} n
# # @return {Integer}
# def first_bad_version(n)
#   (1..n).bsearch {|version| is_bad_version(version)}
# end