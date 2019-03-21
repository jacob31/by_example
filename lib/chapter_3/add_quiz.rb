# add_quiz.rb
correct_answers = 0
correct_responses = ['Great job!', 'Correct!', 'Awesome']
incorrect_responses = ['Try again.', 'Oops.', 'What?']


10.times do 
  num_one = rand(1..10)
  num_two = rand(1..10)
  suggestion = rand(100) > 50 ? num_one + num_two : rand(5..18)
  puts "#{num_one} + #{num_two} = (enter #{suggestion})"
  answer = gets.chomp.to_i
  puts answer == num_one + num_two ? correct_responses[rand(3)] : incorrect_responses[rand(3)]
  correct_answers += 1 if answer == num_one + num_two 
end

puts "You answered #{correct_answers} out of 10."