#!/usr/bin/env ruby
# match any 10 digit phone

puts ARGV[0].scan(/\d{10,10}/).join
