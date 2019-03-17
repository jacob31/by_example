# print_my_diamond.rb
rows = 0
while rows.even?
  print "'Enter' the maximum number of rows (odd number):  "
  rows = gets.chomp.to_i
end
# print_diamond.rb
# prints top half of diamond
num_of_spaces = (rows/2) + 1
(1..rows).step(2).each do |num_of_stars|
  num_of_spaces -= 1
  puts " " * num_of_spaces + "*" * num_of_stars
end

# prints bottom half of diamond
(1..(rows-1)).step(2).reverse_each do |num_of_stars|
  num_of_spaces += 1
  puts " " * num_of_spaces + "*" * num_of_stars
end