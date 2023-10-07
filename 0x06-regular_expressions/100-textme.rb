#!/usr/bin/env ruby
# search for SENDER, RECIEVER and FLAGS used

puts ARGV[0].scan(/(?<=\[from:|to:|flags:)(.*?)\]/).join(',')
