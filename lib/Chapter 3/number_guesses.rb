# number_guesses.rb
require 'pry'
def request_guess
  puts "I have a secret number (0 - 9), Can you guess it?"
  guess = gets.chomp.to_i
  return guess
end

def other_guesses
  puts "Let's try again..."
  guess = gets.chomp.to_i
  return guess
end

count_guesses = 0
answer = rand(9)
guess = nil

until guess == answer

  if count_guesses == 0
    guess = request_guess
  else
    guess = other_guesses
  end

  count_guesses += 1
  case guess <=> answer
  when 1 then puts "Your guess was high."
  when 0 then puts "Good guess! It took #{count_guesses} guess#{ if guess == 1 then '' else 'es' end}."
  when -1 then puts "Your guess was low."
  end
end