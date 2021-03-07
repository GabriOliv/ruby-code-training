#!/usr/bin/ruby

# Acronym
# Convert a phrase to its acronym.
# Techies love their TLA (Three Letter Acronyms)!
# Help generate some jargon by writing a program that converts
# a long name like Portable Network Graphics to its acronym (PNG).
# https://exercism.io/tracks/ruby/exercises/acronym

# Run
# ruby [Script Name]

class Lexic

    def initialize(*message)
        #String
        @message = message
    end

    def set(message)
        @message = message
    end


    def acronym()
        @message = @message.join

        @message.downcase!

        aux = @message.split

        aux.map! { |a| a.capitalize.chr}

        @message = aux.join
    end


    def get()
        "#{@message}"
    end

end

msg = Lexic.new(gets())

msg.acronym

puts msg.get

