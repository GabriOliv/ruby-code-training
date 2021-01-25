#006_Threads_Matrix

def Out_Array(a1, amostra, tam)
    puts
    0.upto(amostra){ |i|
        0.upto(amostra){ |j| print a1[i][j],"\t"}
        print ". . .\t"
        (tam-amostra).upto(tam){ |j| print a1[i][j],"\t"}
        puts
    }
    puts ". . ." , ". . ." , ". . ."
    (tam-amostra).upto(tam){ |i|
        0.upto(amostra){ |j| print a1[i][j],"\t"}
        print ". . .\t"
        (tam-amostra).upto(tam){ |j| print a1[i][j],"\t"}
        puts
    }
    puts
end

#Tamanho do Vetor
tam = 100
#amostra de Saida
amostra = 10
#Num de Thread
thread_num = 8
#Vector de Threads
threads = []

puts "\n\n"

#==========================================================================================
#Listagem de Linhas da Matriz

linhas = []
thread_num.times{ |i|
    linhas[i] = Array.new

    linhas[i][0] = i*tam/thread_num
    linhas[i][0] = linhas[i-1][0] + tam/thread_num + 1  if i != 0

    linhas[i][1] = linhas[i][0] + tam/thread_num
    linhas[i][1] = tam                                  if i == thread_num-1
}
#Retorno de Linhas
puts "","Tabela de Pesquisa:" 
linhas.each{ |a|
    puts "S\t#{a[0]}\t...\tF\t#{a[1]}"
}

#==========================================================================================
#Criacao de Matriz

#Matriz Ordenavel
a1 = []

#Matriz Criacao e Preenchimento
for i in 0..tam
    a1[i] = Array.new
    for j in 0..tam
        a1[i][j] = (rand*tam).to_int
#        a1[i][j] = i+j
    end
end

puts "Desordenado"
Out_Array(a1, amostra, tam)

#==========================================================================================
#Listagem de Threads

thread_num.times{ |i|
    #Atribui Codigo para as Threads
    threads[i] = Thread.new(){
        #Seleciona Linha
        for j in linhas[i][0]..linhas[i][1]
            #Ordena Linha
            for k in 0..tam
                for l in 0..tam
                    a1[j][l] , a1[j][k] = a1[j][k] , a1[j][l] if a1[j][l] >= a1[j][k]
                end
            end
        end
    }
}

#==========================================================================================

threads.each {|t| t.join }

puts "Ordenado"
Out_Array(a1, amostra, tam)


