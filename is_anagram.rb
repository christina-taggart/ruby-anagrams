def is_anagram?(word_1, word_2)
  word_1.split('').sort.join.eql?(word_2.split('').sort.join) ? true : false
end

p is_anagram?("cat","act") == true
p is_anagram?("hello","potato") == false
p is_anagram?("octopi","strategic") == false

def canonical(word)
  word.split('').sort.join
end

def is_anagram?(word1, word2)
  canonical(word1) == canonical(word2)
end

p canonical("cat") == "act"
p is_anagram?("act","cat") == true
p is_anagram?("elvis","lives") == true
p is_anagram?("potato","tomato") == false