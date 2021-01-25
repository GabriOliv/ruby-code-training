#004_Array_n_Elements

#Inicia Array VAZIO 
a1 = []
print "Array está Vazio?  "; puts a1.empty?

#Preenche Elmnt
a1[0]   = 0
a1[1]   = 10
#Preenche o ultimo elemento setado,
#Anteriores Viram NIL
a1[5]  = 50

#Mostra Elmnt
print "Elemento 1 está Vazio?  ";
puts a1[1].nil?
print "Elemento 3 está Vazio?  ";
puts a1[3].nil?
print "Elemento 5 está Vazio?  ";
puts a1[5].nil?

#=============================================
#pula 2 linhas (puts+\n)
puts "\n"

#Cria Range
a2 = 50..70

a3 = 55..65
a4 = 60..80

#Range =/= Array
puts "\n","a1:";
puts a1
puts "\n","a2:";
puts a2


puts "\n"
print "a2 possui range :",a2,"\n"
print "a3 possui range :",a3,"\n"
print "a4 possui range :",a4,"\n\n"
#ESCALA DOS RANGES CRIADOS
#a2 => 50------70
#a3 =>   55--65
#a4 =>     60------80

#Verifica se o Numero esta no Intervalo
print "a2 possui 40? :"
puts a2 === 40
print "a2 possui 60? :"
puts a2 === 60
print "a2 possui 80? :"
puts a2 === 80

puts;puts
#Verifica se o Primeiro Range contem o segundo range (Conjunto)
print "a2 contem a3? :"
puts a2.cover?(a3)
print "a2 contem a4? :"
puts a2.cover?(a4)
print "a4 contem a3? :"
puts a4.cover?(a3)

#=============================================
puts "\n"

