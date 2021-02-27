a1 = []
lim = 1000
show = 5

if a1.empty?
    i = 0
    while i<=lim
        a1[i] = (rand*lim).to_int
        i += 1
    end
end

#Show Elmnts
puts "\nRandom:"
0.upto(show){ |i| print a1[i],"\t"}
print ". . .\t"
(lim-show).upto(lim){ |i| print a1[i],"\t"}
puts

#Array Sort
unless a1.empty?
    for i in 0..lim
        for j in 0..lim
            a1[i] , a1[j] = a1[j] , a1[i] if a1[i]<=a1[j]
        end
    end
end

puts "\nSort:"

0.upto(show){ |i| print a1[i],"\t"}
print ". . .\t"
(lim-show).upto(lim){ |i| print a1[i],"\t"}
puts

#==========================================================================================


puts "\n\n"
matrix_num = 10
a2 = []

#matrix
for i in 0..(matrix_num)
    a2[i] = Array.new
end

for i in 0..matrix_num
    for j in 0..matrix_num
        a2[i][j] = i+j
    end
end

matrix_num.times{ |i|
    print "["
    matrix_num.times{ |j|
        print "\t",a2[i][j]
    }
    puts "\t]"
}




