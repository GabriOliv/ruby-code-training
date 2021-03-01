#!/usr/bin/ruby

# Transpose
#   An exercise from the Ruby track medium
#   Take input text and output it transposed.
#
# Roughly explained, the transpose of a matrix:
# AB
# DEF
#
# results in:
# AD
# BE
#  F
#
# In general, all characters from the input should also be present in the transposed output.
# That means that if a column in the input text contains only spaces on its bottom-most row(s),
# the corresponding output row should contain the spaces in its right-most column(s).
# https://exercism.io/tracks/ruby/exercises/transpose

# Run
# ruby [Script Name] [File Name]

input_array = ARGV

unless input_array.length == 1
    puts "\nSorry, Parameter Missing"
    puts "Try: ruby [Script Name] [File name]\n\n"
    exit
end


begin
    f = File.open(input_array[0])
rescue Exception => e
    puts "\nSorry, Error: #{e.class.name}"
else
    #puts "No File Errors"
    aux = f.read
ensure
    f.close unless f.nil?
end


# Split lines
aux = aux.split("\n")

# Max length line
length_max = 0
aux.map { |line| length_max = line.length if line.length > length_max }

# Fill lines to same size
aux.map! { |line| line.ljust(length_max, " ") }

#Char split
aux.map! do |line|
    line = line.split("")
end

#Transpose
aux = aux.transpose

#Join Char
for i in 0..(aux.length-1) do
    aux[i] = aux[i].join
end

puts aux
