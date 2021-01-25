#005_loops
a1 = []
tam = 1000
amostra = 10

if a1.empty?
    i = 0
    while i<=tam
        a1[i] = (rand*tam).to_int
        i += 1
    end
end
puts "Array Preenchido"

#Executa de 0 a 10, armazenando em (i) e executando o comando
0.upto(amostra){ |i| print a1[i],"\t"}
print ". . .\t"
#Executa amostra do final do array
(tam-amostra).upto(tam){ |i| print a1[i],"\t"}
puts

#não executar somente se a1 estiver vazio
unless a1.empty?
    for i in 0..tam
        for j in 0..tam
            a1[i] , a1[j] = a1[j] , a1[i] if a1[i]<=a1[j]
        end
    end
end

puts "Array Ordenado"

0.upto(amostra){ |i| print a1[i],"\t"}
print ". . .\t"
(tam-amostra).upto(tam){ |i| print a1[i],"\t"}
puts

#==========================================================================================
puts "\n\n"
matriz_num = 10
a2 = []
#Cria Matriz
for i in 0..(matriz_num)
    a2[i] = Array.new
end

for i in 0..matriz_num
    for j in 0..matriz_num
        a2[i][j] = i+j
    end
end

matriz_num.times{ |i|
    print "["
    matriz_num.times{ |j|
        print "\t",a2[i][j]
    }
    puts "\t]"
}




