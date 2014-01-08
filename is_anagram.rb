def is_anagram?(string1, string2)
	string1.downcase.split('').sort == string2.downcase.split('').sort
end

p is_anagram?('cinema', 'iceman') == true
p is_anagram?('iceman', 'cinema') == true
p is_anagram?('pants', 'pants') == true
p is_anagram?('pants', 'turtle') == false
p is_anagram?('123123', 'kjhasd') == false