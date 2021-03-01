#!/usr/bin/ruby

# Mubashir Cipher
# In Mubashir Cipher, encoding is done by simply replacing paired
# alphabets from the provided key.
#
# Create a function that takes a string containing the message
# to be encoded with a fixed given 2D array of alphabets key.
#
# There are some variations on the rules of encipherment.
# One version of the cipher rules are outlined below:
#
#  key = [['m', 'c'], ['u', 'e'], ['b', 'g'], ['a', 'k'],
#  ['s', 'v'], ['h', 'x'], ['i', 'z'], ['r', 'y'],
#  ['p', 'w'], ['l', 'n'], ['o', 'j'], ['t', 'f'], ['q', 'd']]
# message = "edabit is amazing !"
# mubashir_cipher(message) ➞ "uqkgzf zv kckizlb !"
# https://edabit.com/challenge/8W5AHdDGHfPf2GW6y



class Cipher_Text

    def initialize(*message)
        #String
        @message = message
        #Array
        @encoded = Array.new
    end

    def set(message)
        @message = message
    end

    def mubashir_cipher()
        key = [
            ['m', 'c'],
            ['u', 'e'],
            ['b', 'g'],
            ['a', 'k'],
            ['s', 'v'],
            ['h', 'x'],
            ['i', 'z'],
            ['r', 'y'],
            ['p', 'w'],
            ['l', 'n'],
            ['o', 'j'],
            ['t', 'f'],
            ['q', 'd']
        ]

        aux = Array.new
        aux = @message.downcase.split("")

        @encoded.clear

        for i in aux do
            for j in key do
                if i == j[0]
                    i = j[1]
                elsif i == j[1]
                    i = j[0]
                end
            end
        
            @encoded.append(i)
        end
    end

    def get()
        "#{@encoded.join}"
    end
    
end


cipher_text = Cipher_Text.new

cipher_text.set(gets())

cipher_text.mubashir_cipher()

puts cipher_text.get()


