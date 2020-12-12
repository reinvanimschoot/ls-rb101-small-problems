=begin

Write a method that will take a short line of text, and print it within a box.

Example:

print_in_box('To boldly go where no one has gone before.')
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+

print_in_box('')
+--+
|  |
|  |
|  |
+--+

You may assume that the input will always fit in your terminal window.

=end

def print_in_box(string)
  string_length = string.length

  first_line = "+-" + ("-" * string_length) + "-+"
  second_line = "| " + (" " * string_length) + " |"
  third_line = "| " + string + +" |"
  fourth_line = "| " + (" " * string_length) + " |"
  fifth_line = "+-" + ("-" * string_length) + "-+"

  puts first_line
  puts second_line
  puts third_line
  puts fourth_line
  puts fifth_line
end

print_in_box("To boldly go where no one has gone before.")
print_in_box("")
