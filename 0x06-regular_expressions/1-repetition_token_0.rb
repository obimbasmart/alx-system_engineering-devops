#!/usr/bin/env ruby
# match a string (arg) using ruby regex flavor

puts ARGV[0].scan(/hbt{2,5}n/).join
