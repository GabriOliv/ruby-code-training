
def Out_Array(a1, show, size)
    puts
    0.upto(show){ |i|
        0.upto(show){ |j| print a1[i][j],"\t"}
        print ". . .\t"
        (size-show).upto(size){ |j| print a1[i][j],"\t"}
        puts
    }
    puts ". . ." , ". . ." , ". . ."
    (size-show).upto(size){ |i|
        0.upto(show){ |j| print a1[i][j],"\t"}
        print ". . .\t"
        (size-show).upto(size){ |j| print a1[i][j],"\t"}
        puts
    }
    puts
end

size = 20
show = 2
thread_num = 8
threads = []

puts "\n"

#List Lines

linhas = []
thread_num.times{ |i|
    linhas[i] = Array.new

    linhas[i][0] = i*size/thread_num
    linhas[i][0] = linhas[i-1][0] + size/thread_num + 1  if i != 0

    linhas[i][1] = linhas[i][0] + size/thread_num
    linhas[i][1] = size                                  if i == thread_num-1
}

#Show Lines
puts "","Table:" 
linhas.each{ |a|
    puts "S\t#{a[0]}\t...\tF\t#{a[1]}"
}

#==========================================================================================
#Matrix Fill
a1 = []
for i in 0..size
    a1[i] = Array.new
    for j in 0..size
        a1[i][j] = (rand*size).to_int
    end
end

puts "\nRandom:"
Out_Array(a1, show, size)

#==========================================================================================
#Threads List

thread_num.times{ |i|
    threads[i] = Thread.new(){
        for j in linhas[i][0]..linhas[i][1]
            for k in 0..size
                for l in 0..size
                    a1[j][l] , a1[j][k] = a1[j][k] , a1[j][l] if a1[j][l] >= a1[j][k]
                end
            end
        end
    }
}


threads.each {|t| t.join }

puts "Sort:"
Out_Array(a1, show, size)

