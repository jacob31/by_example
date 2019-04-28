# sort_children_names.rb
array = []
$/ = "0"
puts "Enter child names in class:"
input = STDIN.gets
input.each_line {|line| array << line}

puts array.class