#Empty Array 
a1 = []
print "Array is Empty? -> "; puts a1.empty?

#Array Fill
a1[0]   = 0
a1[1]   = 10
a1[5]  = 50


print "Element 01 is Empty?  ";
puts a1[1].nil?
print "Element 03 is Empty?  ";
puts a1[3].nil?
print "Element 05 is Empty?  ";
puts a1[5].nil?

#=============================================
puts "\n"

#Range
a2 = 50..70

a3 = 55..65
a4 = 60..80

#Range =/= Array
puts "\na1(array): #{a1}";
puts "\na2(range): #{a2}";


puts "\n"
print "a2 possui range :",a2,"\n"
print "a3 possui range :",a3,"\n"
print "a4 possui range :",a4,"\n\n"

#Ranges Output
#a2 => 50------70
#a3 =>   55--65
#a4 =>     60------80

#If have the Elemnt
print "a2 have 40? :"
puts a2 === 40
print "a2 have 60? :"
puts a2 === 60
print "a2 have 80? :"
puts a2 === 80

puts;
#If a Range Cover Other
print "a2 have a3? :"
puts a2.cover?(a3)
print "a2 have a4? :"
puts a2.cover?(a4)
print "a4 have a3? :"
puts a4.cover?(a3)

puts "\n"
