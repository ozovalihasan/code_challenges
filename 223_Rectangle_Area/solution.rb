# @param {Integer} ax1
# @param {Integer} ay1
# @param {Integer} ax2
# @param {Integer} ay2
# @param {Integer} bx1
# @param {Integer} by1
# @param {Integer} bx2
# @param {Integer} by2
# @return {Integer}
def compute_area(ax1, ay1, ax2, ay2, bx1, by1, bx2, by2)
  area1 = (ax2 - ax1) * (ay2 - ay1)
  area2 = (bx2 - bx1) * (by2 - by1)

  if (ax2 <= bx1) || (bx2 <= ax1) || (ay2 <= by1) || (by2 <= ay1) || area1.zero? || area2.zero?
    return area1 + area2 
  end
  
  cx1, cx2 = [ax1, ax2, bx1, bx2].sort[1..2]
  cy1, cy2 = [ay1, ay2, by1, by2].sort[1..2]

  area1 + area2 - (cx2 - cx1) * (cy2 - cy1)
end
