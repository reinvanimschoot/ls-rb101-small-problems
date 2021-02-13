=begin
Count letters in string
In this kata, you have to count lowercase letters in a given string and return the letter count in a hash with 'letter'
as key and count as 'value'. The key must be 'symbol' instead of string in Ruby.

Example:

letterCount('arithmetics') #=> {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}

Input: a lowercase string, without punctuation or capital letters
Output: a hash with the different characters of the input string as keys and the times they appear in the string as respective values.

The problem:

We get a string and we want to figure out how many times each character in that string is found. In other words, we want to count
the different letters in the string.

Datastructure:
  key_count = hash 

Algorithm:

We want to iterate over the characters of the input string.
For each character we want to check if it is already present in our key_count hash.

  If it is not, we add the character as a key and the value would be set to 1.

  If it is, we increment the value (aka the count) by one

After the iteration, we return the key_count hash.

=end

def letter_count(string)
  letter_count = Hash.new(0)

  string.each_char do |character|
    letter_count[character.to_sym] += 1
  end

  letter_count
end

p letter_count("codewars") == { :a => 1, :c => 1, :d => 1, :e => 1, :o => 1, :r => 1, :s => 1, :w => 1 }
p letter_count("activity") == { :a => 1, :c => 1, :i => 2, :t => 2, :v => 1, :y => 1 }
p letter_count("arithmetics") == { :a => 1, :c => 1, :e => 1, :h => 1, :i => 2, :m => 1, :r => 1, :s => 1, :t => 2 }
