#!/usr/bin/env ruby

input = ARGV[0]
matches = input.scan(/^\d{10}$/)

puts matches.empty? ? "" : matches.join + "\n"
