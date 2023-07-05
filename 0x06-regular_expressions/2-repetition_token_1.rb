#!/usr/bin/env ruby

input = ARGV[0]
matches = input.scan(/hb?tn/)

if matches.empty?
    puts ""
else
    puts matches.join
end
