#!/usr/bin/env ruby

input = ARGV[0]
matches = input.scan(/[A-Z]+/)

puts matches.join
