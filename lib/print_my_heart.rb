# print_my_heart.rb

def heart(rows)
  # prints top half of heart
  aster = "*" * ((rows - 7) / 2)
  puts <<-HEREDOC
  #{aster}   #{aster}
 *#{aster}* *#{aster}*
**#{aster}***#{aster}**
  HEREDOC
  num_of_spaces = 0
  # prints bottom half of heart
  (1..(rows)).step(2).reverse_each do |num_of_stars|
     puts " " * num_of_spaces + "*" * num_of_stars
     num_of_spaces += 1
  end
end

rows = 0
while rows <= 10
  print "'Enter' an odd number greater than 10:  "
  rows = gets.chomp.to_i
  if rows.odd?
    return heart(rows)
  else
    puts "Let's try again. "
  end
end