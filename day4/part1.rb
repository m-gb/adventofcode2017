#!/usr/bin/env ruby

def passphrase(input)
  array = input.split("\n").map{ |row| row.split(' ')}
  valid_phrases = 0
  array.each do |line|
    valid_phrases += 1 unless line.detect{ |word| line.count(word) > 1 }
  end
  puts valid_phrases
end

passphrase('aa bb cc dd ee') # 1
passphrase('aa bb cc dd aa') # 0
passphrase('aa bb cc dd aaa') # 1

phrases = File.read('./input.txt')
passphrase(phrases) # 455