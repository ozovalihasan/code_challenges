# @param {String} formula
# @return {String}
def count_of_atoms(formula)
  p formula
  result = find_counts(formula)
  result.transform_values! {|val| val == 1 ? "" : val.to_i}
  result.sort_by(&:first).join
end

def find_counts(formula)
  p '================='
  p formula
  result = Hash.new(0)
  while formula.match?(/\(/)
    match = formula.scan(/\(([^\(]*)\)(\d*)/) do |match|
      sub_result = find_counts(match[0]).transform_values! {|val| val * (match[1].empty? ? 1 : match[1].to_i)} 
      result.merge!(sub_result) { |key, old_val, new_val| p key; p old_val; p end_val; old_val + new_val}
    end
    formula.gsub!(/\([^\(]*\)(\d11*)/, "")
    p formula
  end
  formula.scan(/([A-Z][a-z]*)(\d*)/) { |match| result[match[0]] += match[1].empty? ? 1 : match[1].to_i }

  result
end

# B  18900
# Be 18984 
# C  4200
# H  5446 
# He 1386 
# Li 33894 
# N  50106O22638