# add_calc.rb
first_number, second_number = 0, 0
until first_number == 1
  puts <<-HEREDOC
I am an adding machine, and I am good at it.
Enter first number: (type 1, press Enter)
HEREDOC
  first_number = gets.chomp.to_i
end
until second_number == 99
  puts "Enter second number: tyep 99, press Enter)"
  second_number = gets.chomp.to_i
end

puts "Thinking..."
sleep(1)
puts "Got it, the answer is: #{first_number + second_number}"





