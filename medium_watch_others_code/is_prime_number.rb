# Write a method that will determine whether an integer is a prime.
# Do not use the Prime class

def is_prime?(prime_candidate)
  half = prime_candidate / 2

  2.upto(half) do |number|
    return false if (prime_candidate % number).zero?
  end

  true
end

puts is_prime?(3) == true
puts is_prime?(4) == false
puts is_prime?(11) == true
puts is_prime?(13) == true
puts is_prime?(16) == false
