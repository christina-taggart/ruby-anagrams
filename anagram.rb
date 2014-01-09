

# def is_anagram?(word1, word2)
# 	first_array = word1.downcase.split("").sort!
# 	second_array = word2.downcase.split("").sort!
# 	first_array == second_array 
# end


def canonical(word)
	array = word.downcase.split("").sort!
end

def is_anagram?(word1, word2)
	canonical(word1) == canonical(word2)
end

p is_anagram?('cinema', 'iceman') 
p is_anagram?('iceman', 'cinema') 

p is_anagram?('acres', 'cares')   
p is_anagram?('cares', 'scare')   
p is_anagram?('scare', 'acres')   

p is_anagram?('pants', 'turtle')  
p is_anagram?('123123', 'kjhasd') 



