#003_number_operator

puts "\n\tOperators\n\n"

#Random
a = 10 * rand
puts "Random:\t 10 * rand = #{a}"

#Add
a = 10 + 2
puts "Add:\t 10 + 2 = #{a}"

#Sub
a = 10 - 2
puts "Sub:\t 10 - 2 = #{a}"

#Multi
a = 10 * 2
puts "Multi:\t 10 * 2 = #{a}"

#Div
a = 10 / 2
puts "Div:\t 10 / 2 = #{a}"

#Mod
a = 10 % 2
puts "Mod:\t 10 % 2 = #{a}"

#Exp
a = 10 ** 2
puts "dand:\t 10 ** 2 = #{a}"


#Logic Operation
puts "\n\tLogic\n\n"

#AND
a = 10 & 2
puts "AND:\t 10 & 2  = #{a}"
puts "1010","&&&&","0010","====","0010"
puts

#OR
a = 10 | 2
puts "OR:\t 10 | 2 = #{a}"
puts "1010","||||","0010","====","1010"
puts

#XOR
a = 10 ^ 2
puts "XOR:\t 10 ^ 2 = #{a}"
puts "1010","^^^^","0010","====","1000"
puts 

#shift-left
a = 10 << 2
puts "shift-left:\t 10 << 2 = #{a}"
puts "001010","<<<<","010100","<<<<","101000"
puts

#shift-right
a = 10 >> 2
puts "shift-right:\t 10 >> 2 = #{a}"
puts "1010",">>>>","0101",">>>>","0010"
puts

puts
