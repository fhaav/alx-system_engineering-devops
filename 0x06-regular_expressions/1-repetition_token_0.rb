#!/usr/bin/env ruby

input = ARGV[0]
matches = input.scan(/hbt{2,5}n/)

if matches.empty?
    puts ""
else
    puts matches.join
end
