#!/usr/bin/env ruby

def passphrase(input)
  array = input.split("\n").map{ |row| row.split(' ')}
  valid_phrases = 0
  array.each do |line|
    line.map!{ |word| word.chars.sort.join} # Returns alphabetically sorted words.
    valid_phrases += 1 unless line.detect{ |word| line.count(word) > 1 } # Checks for duplicate words.
  end
  puts valid_phrases
end

passphrase('abcde fghij') # 1
passphrase('abcde xyz ecdab') # 0
passphrase('a ab abc abd abf abj') # 1 
passphrase('iiii oiii ooii oooi oooo') # 1 
passphrase('oiii ioii iioi iiio') # 0

phrases = File.read('./input.txt')
passphrase(phrases) # 186 