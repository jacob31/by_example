# print_my_hollow_square.rb

def hollow_square(num)
  aster = "*" * num
  spaces = " " * num
  puts <<-HEREDOC
**#{aster}**
* #{spaces} *
* #{spaces} *
* #{spaces} *
**#{aster}**
  HEREDOC
end

hollow_square(10)