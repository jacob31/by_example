# subtract_quiz.rb
count = 0
correct_responses = ['Great job!', 'Correct!', 'Awesome']
incorrect_responses = ['Try again.', 'Oops.', 'What?']


10.times do 
  num_one = rand(6..10)
  num_two = rand(1..5)
  answer = num_one -num_two
  suggestion = rand(100) > 50 ? answer : rand(0..8)
  puts "#{num_one} - #{num_two} = (enter #{suggestion})"
  input = gets.chomp.to_i
  puts answer == input ? correct_responses[rand(3)] : incorrect_responses[rand(3)]
  count += 1 if answer == input
end

puts "You answered #{count} out of 10."