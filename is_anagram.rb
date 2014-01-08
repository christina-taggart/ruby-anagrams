def canonical(word)
	word.downcase.split('').sort
end

def is_anagram?(string1, string2)
	canonical(string1) == canonical(string2)
end

p is_anagram?('cinema', 'iceman') == true
p is_anagram?('iceman', 'cinema') == true
p is_anagram?('pants', 'pants') == true
p is_anagram?('pants', 'turtle') == false
p is_anagram?('123123', 'kjhasd') == false