# @param {String} word1
# @param {String} word2
# @return {Integer}
def min_distance(word1, word2)
  arr = []

  0.upto word1.length do |index|
    arr[index] = [index]
  end
  
  0.upto word2.length do |index2|
    arr[0][index2] = index2
  end

  0.upto(word1.length - 1) do |index|

    0.upto(word2.length - 1) do |index2|
      arr[index + 1][index2 + 1] =  if word1[index] == word2[index2]
                                      arr[index][index2] 
                                    else
                                      [
                                        arr[index][index2],
                                        arr[index + 1][index2],
                                        arr[index][index2 + 1]
                                      ].min + 1
                                    end
    end
      
  end

  arr[-1][-1]
end
