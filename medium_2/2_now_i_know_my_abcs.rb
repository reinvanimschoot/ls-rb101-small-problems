=begin

A collection of spelling blocks has two letters per block, as shown in this list:

B:O   X:K   D:Q   C:P   N:A
G:T   R:E   F:S   J:W   H:U
V:I   L:Y   Z:M

This limits the words you can spell with the blocks to just those words that do not use both letters from any given block.
Each block can only be used once.

Write a method that returns true if the word passed in as an argument can be spelled from this set of blocks,
false otherwise.

Examples:

block_word?('BATCH') == true
block_word?('BUTCH') == false
block_word?('jest') == true

Input: a string
Output: boolean

We iterate over the characters in the provided input string.
  If the character is found in the available blocks (be it key or value),
    we add that block to the used block list and continue

  If the character is not found in the available blocks,
    it means the block is already used and we break and return false
  
  If we do not break, we return true
=end

def block_word?(word)
  available_blocks = {
    "B" => "O", "X" => "K", "D" => "Q", "C" => "P", "N" => "A",
    "G" => "T", "R" => "E", "F" => "S", "J" => "W", "H" => "U",
    "V" => "I", "L" => "Y", "Z" => "M",
  }

  characters = word.upcase.chars

  characters.each do |character|
    return false unless available_blocks.value?(character) || available_blocks.key?(character)

    available_blocks.delete_if { |key, value| [key, value].include?(character) }
  end

  true
end

puts block_word?("BATCH") == true
puts block_word?("BUTCH") == false
puts block_word?("BABY") == false
puts block_word?("jest") == true
