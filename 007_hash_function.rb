#007_Function_Hash
require 'digest'

a1 = ""

print "Plain-Text: "
puts a1

# Compute string digest
puts "","SHA 180"
puts Digest::SHA1.hexdigest(a1)

puts "","SHA 256"
puts Digest::SHA2.hexdigest(a1)

puts "","SHA 384"
puts Digest::SHA384.hexdigest(a1)

puts "","SHA 512"
puts Digest::SHA512.hexdigest(a1)

puts "","RMD 160"
puts Digest::RMD160.hexdigest(a1)

puts "","MD5"
puts Digest::MD5.hexdigest(a1)

#Hash of File in same Dir
puts "","SHA 256 File"
p Digest::SHA256.file("006_threads_matrix.rb").hexdigest

puts
puts "SHA2 from empty string('') entry:"
a2 = Digest::SHA2.hexdigest(a1)
puts a2

puts "\nfirst 10 digits"
a3 = a2[0..9]
puts a3
puts "\nlast 10 digits"
a3 = a2[ ( a2.size() - 10 ) .. ( a2.size() ) ]
puts a3

