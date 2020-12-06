=begin

Write a method that counts the number of occurrences of each element in a given array.

=end

def count_occurrences(list)
  occurrences = {}

  list.each do |element|
    if occurrences[element]
      occurrences[element] += 1
    else
      occurrences[element] = 1
    end
  end

  occurrences.each_pair do |element, occurrence_count|
    puts "#{element} => #{occurrence_count}"
  end
end

vehicles = [
  "car", "car", "truck", "car", "SUV", "truck",
  "motorcycle", "motorcycle", "car", "truck",
]

count_occurrences(vehicles)
