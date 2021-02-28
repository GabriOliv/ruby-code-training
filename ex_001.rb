#!/usr/bin/env ruby

# Get the File Extension
# Write a function that maps files to their extension names
# https://edabit.com/challenge/xE3A7mW4SnDpKKzos

# Run
# ruby [Script Name] [File Name]

input_array = ARGV

puts "\nEmpty Parameter\nTry : ruby [Script Name] [File Name]" if input_array.length == 0

input_array.each do |i|

    puts "\nYour File Name:\t#{i}"

    if (i =~ /([.][a-z]*)+$/)
        puts "File Extension:\t#{i.match(/([.][a-z]*)+$/)}"
    else
        puts "File Extension:\tEmpty"
    end

end

puts

