#008_String_Compare_Regex

str_regex = []

#Palavra unica meio ao texto
str_regex[1] = /Test/
str_regex[2] = /Tes t/
#Palavra (0 ou mais coisas[.*]) Palavra
str_regex[3] = /Test.*1 1/
str_regex[4] = /T.*est 3 1 1/
#Palavra (1 ou mais coisas[.+]) Palavra
str_regex[5] = /Test.+1 1/
str_regex[6] = /T.+est 3 1 1/

normal_text = "Test 3 1 1 Test 1 1 1"

puts "Regex Used"
puts
puts str_regex
puts

puts "Text: #{normal_text}"
puts "String Size: #{normal_text.length()}"

falha = " Regex Falhou"
sucesso = " Regex Sucesso"

puts
puts "Tests:"
puts

for i in 1..(str_regex.size()-1)

    print i

    (normal_text =~ str_regex[i]) ? (puts "#{sucesso} #{str_regex[i]}") : (puts "#{falha} #{str_regex[i]}")

end

