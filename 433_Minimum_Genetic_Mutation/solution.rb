# @param {String} start
# @param {String} end
# @param {String[]} bank
# @return {Integer}
def min_mutation(start_gene, end_gene, bank)
  return -1 unless bank.include? end_gene    

  bank.map! do |gene|
    gene.chars
  end

  @start_gene = start_gene.chars
  end_gene = end_gene.chars

  bank << @start_gene unless bank.include? @start_gene
  
  hash = bank.map do |gene|
    [ gene, bank.select {|temp_gene| valid_mutation?(temp_gene, gene) } ]
  end.to_h
  
  valid_steps = []
  check_genes(hash, end_gene, 0, [end_gene], valid_steps)
  valid_steps.min || -1 
  
end

def check_genes(hash, current_gene, step, used_genes, valid_steps)
  if current_gene == @start_gene 
    valid_steps << step 
    return
  end
  
  (hash[current_gene] - used_genes).each do |temp_gene|
    used_genes.push current_gene
    check_genes(hash, temp_gene, step + 1, used_genes, valid_steps)
    used_genes.pop
  end
end

def valid_mutation?(gene1, gene2)
  gene1.zip(gene2).count {|pair| pair.last != pair.first } == 1
end
