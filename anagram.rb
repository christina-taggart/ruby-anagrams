def is_anagram?(word1,word2)
  letters1 = word1.split("")
  letters2 = word2.split("")
  letters1.sort! == letters2.sort!
end

p is_anagram?("dog","god") == true
p is_anagram?("dog", "good") == false
p is_anagram?("cinema", "iceman") == true