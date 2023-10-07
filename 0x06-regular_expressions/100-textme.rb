#!/usr/bin/env ruby
# match any 10 digit phone

puts ARGV[0].scan(/(?<=\[from:|to:|flags:)(.*?)\]/).join(',')
