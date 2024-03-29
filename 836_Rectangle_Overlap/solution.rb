# @param {Integer[]} rec1
# @param {Integer[]} rec2
# @return {Boolean}
def is_rectangle_overlap(rec1, rec2)
  (rec1.first < rec2[2]) &&
  (rec2.first < rec1[2]) &&
  (rec1[1] < rec2.last) &&
  (rec2[1] < rec1.last) 
end
