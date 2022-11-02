# @param {String} start
# @param {String} end
# @param {String[]} bank
# @return {Integer}
def min_mutation(start_gene, end_gene, bank)
  return -1 unless bank.include? end_gene    
  @min_step = Float::INFINITY
  bank.map! do |gene|
    transform_as_number(gene)
  end

  @start_gene = transform_as_number(start_gene)
  end_gene = transform_as_number(end_gene)
  bank << @start_gene unless bank.include? @start_gene

  hash = {}
  
  bank.map do |gene|
    hash[gene] = bank.select {|temp_gene| diff_count_between_genes(temp_gene, gene) == 1 }
  end

  check_genes(hash, end_gene, 0, [end_gene])

  @min_step == Float::INFINITY ? -1 : @min_step
  
end

def check_genes(hash, current_gene, step, used_genes)
  if current_gene == @start_gene && step < @min_step
    @min_step = step 
    return
  end
  
  hash[current_gene].each do |temp_gene|
    next if used_genes.include?(temp_gene)
    check_genes(hash, temp_gene, step + 1, used_genes + [current_gene])
  end
end

def transform_as_number(gene)
  gene.chars
end

def diff_count_between_genes(gene1, gene2)
  gene1.zip(gene2).count {|pair| pair.last != pair.first }
end
