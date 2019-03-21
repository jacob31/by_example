# print_diamond.rb
num_of_spaces = 4
(1..7).step(2).each do |num_of_stars|
  num_of_spaces -= 1
  puts " " * num_of_spaces + "*" * num_of_stars
end

(1..6).step(2).reverse_each do |num_of_stars|
  num_of_spaces += 1
  puts " " * num_of_spaces + "*" * num_of_stars
end
