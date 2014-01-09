def is_anagram?(first_word, second_word)
  alphabetize_characters(first_word) == alphabetize_characters(second_word) ? true : false
end

def alphabetize_characters(word)
  word.downcase.chars.sort
end


p is_anagram?("cinema", "anemic")
p is_anagram?('cinema', 'iceman') # => true
p is_anagram?('iceman', 'cinema') # => true
p is_anagram?('pants', 'pants')   # => true
p is_anagram?('CiNemA', 'iceman') # => true
p is_anagram?('acres', 'cares')   # => true
p is_anagram?('cares', 'scare')   # => true
p is_anagram?('scare', 'acres')   # => true
p is_anagram?('abcde2', 'c2abed')  # => true
p is_anagram?('pants', 'turtle') == false
p is_anagram?('123123', 'kjhasd') == false