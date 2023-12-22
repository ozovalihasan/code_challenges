# @param {String[]} bank
# @return {Integer}
def number_of_beams(bank)
  bank.map { |row| row.count('1') }
    .reject(&:zero?)
    .each_cons(2).sum { |first, second| first * second }
end
