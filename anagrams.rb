# To check if two words are anagrams of each other
# Simply make sure that there is the same amount of characters in each word
# and check to make sure they are the same type of characters
class String
  def canonical(word)
    self.downcase.split("").sort == word.downcase.split("").sort ? true : false
  end
end

def is_anagram?(word1, word2)
  word1.downcase.split("").sort == word2.downcase.split("").sort ? true : false
end

p "cato".canonical("taco")
p is_anagram?("cato", "taco")
p "cinema".canonical("IcEMaN")
p is_anagram?("IcEMAN", "CiNEma")