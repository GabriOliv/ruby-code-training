#!/usr/bin/ruby

# Pangram
# Determine if a sentence is a pangram.
# A pangram is a sentence using every letter of the alphabet
# at least once. The best known English pangram is:
# "The quick brown fox jumps over the lazy dog."
# The alphabet used consists of ASCII letters a to z,
# inclusive, and is case insensitive.
# Input will not contain non-ASCII symbols.
# https://exercism.io/tracks/ruby/exercises/pangram

# Run
# ruby [Script Name]

class Lexic
    def initialize(*message)
        (message.is_a? Array) ? @message = message.join : @message = message
    end

    def set(message)
        @message = message.join if message.is_a? Array
    end

    def acronym()
        @message.downcase!
        aux = @message.split
        aux.map! { |a| a.capitalize.chr}
        @message = aux.join
    end

    def pangram()
        characters = @message.downcase.split(//)

        hash = {}

        ("a".."z").each{ |letter| hash[letter] = false }

        for char in characters
            hash[char] = true
        end

        return !hash.has_value?(false)
    end

    def get()
        "#{@message}"
    end
end

puts Lexic.new(gets).pangram
