#pseudocode 
#anagrams are words with the same letters in different orders
#take strings, split them, order the letters
#if both arrays are equal, they are anagrams
#if not they are not


def is_anagram?(string1, string2)
	if string1.downcase.split("").sort == string2.downcase.split("").sort 
		p true
	else
		p false
	end
	

end



# The method should be symmetric, i.e.,
# is_anagram?(word1, word2) == is_anagram?(word2, word1) for any two words
is_anagram?('cinema', 'iceman') # => true
is_anagram?('iceman', 'cinema') # => true

# Pedantically, a word is always an anagram of itself.
# This is called being "reflexive," i.e., is_anagram?(word, word) == true for any word
is_anagram?('pants', 'pants')   # => true

# is_anagram? should be case-insensitive
is_anagram?('CiNemA', 'iceman') # => true

# Notice: acres, cares, and scare are all anagrams of each other
is_anagram?('acres', 'cares')   # => true
is_anagram?('cares', 'scare')   # => true
is_anagram?('scare', 'acres')   # => true

# The "words" don't need to be valid English words
is_anagram?('abcde2', 'c2abed')  # => true

is_anagram?('pants', 'turtle')  # => false
is_anagram?('123123', 'kjhasd') # => false