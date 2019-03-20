# number_guesses.rb
require 'pry'
def request_guess
  puts "I have a secret number (0 - 9), Can you guess it?"
  guess = gets.chomp.to_i
  return guess
end

count = 0
answer = rand(9)
guess = nil

until guess == answer

  guess = request_guess
  count += 1
  case guess <=> answer
  when 1 then puts "Your guess was high."
  when 0 then puts "Good guess!"
  when -1 then puts "Your guess was low."
  end
end