=begin

Take a look at the following code:

name = 'Bob'
save_name = name
name = 'Alice'
puts name, save_name

What does this code print out? Think about it for a moment before continuing.

If you said that code printed

Alice
Bob

you are 100% correct, and the answer should come as no surprise. Now, let's look at something a bit different:

name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

What does this print out? Can you explain these results?

=end

=begin

This would print out 

BOB
BOB

When you perform name.upcase!, you are using a destructive method that mutates the object it is called on, in this case name.
Since save_name is still pointing to the same string in memory as name is, the value of save_name is the same as name, being the upcased string 'BOB'.

=end
