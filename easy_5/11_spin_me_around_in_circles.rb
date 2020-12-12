=begin

You are given a method named spin_me that takes a string as an argument and returns a string that contains the same words,
but with each word's characters reversed. Given the method's implementation,
will the returned string be the same object as the one passed in as an argument or a different object?

def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

spin_me("hello world") # "olleh dlrow"

=end

# It will be a different object.
# The first line of the array starts by splitting str which returns an array of the words.
# This means that from that point onwards, we are not working with the original string anymore but
# with an array that has a different object_id and is thus a different object altogether.
# We do perform some mutation on the elements of the array but ultimately this has no bearing anymore
# on the string that was passed in.
