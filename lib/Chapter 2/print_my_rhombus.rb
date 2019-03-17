# print_my_rhombus.rb

def rhombus(num)
  aster = "*" * num
  puts <<-HEREDOC
   *#{aster}***
  **#{aster}**
 ***#{aster}*
****#{aster}
  HEREDOC
end

print "'Enter' a positive number:  "
num = gets.chomp.to_i.abs
rhombus(num)
