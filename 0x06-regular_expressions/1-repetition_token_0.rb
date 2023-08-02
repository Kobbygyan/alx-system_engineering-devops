#!/usr/bin/env ruby

def match_repetition_token(arg)
  regex = (/hbt{2,5}n/)
  if arg =~ regex
    puts "Match found: #{arg}"
  else
    puts "No match found!"
  end
end

if ARGV.length != 1
  puts "Usage: ruby script.rb <input_string>"
else
  input_string = ARGV[0]
  match_repetition_token(input_string)
end

