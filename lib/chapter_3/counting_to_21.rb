# counting_to_21.rb

require 'pry'

numbers = (1..23).to_a
number_of_players = 0
round_number = 0
option_values = [nil, nil, nil]
players = []

until number_of_players.between?(1, 3)
  puts "How many players are in this game (1-3)?"
  number_of_players = gets.chomp.to_i
end

(1..number_of_players).each do |number|
  puts "Enter the name of player number #{number}."
  players << gets.chomp.capitalize
end
system("clear")
until option_values.include?(21)
  round_number += 1
  players.each do |name|
    option1, option2, option3 = numbers[0], numbers[1], numbers[2]
    
    puts "Round #{round_number}"
    puts "#{name} choose an option: "
    puts "Option 1: #{option1}" 
    puts "Option 2: #{option1}, #{option2}" unless option2 > 21
    puts "Option 3: #{option1}, #{option2}, #{option3}" unless option3 > 21
    
    choice = gets.chomp.to_i
    choice = 1 unless (1..3).include?(choice)
    
    system("clear")
    
    case choice
    when 1 then option_values = [option1, nil, nil]
    when 2 then option_values = [option1, option2, nil]
    when 3 then option_values = [option1, option2, option3]
    end

    if option_values.include?(21)
      puts "Sorry #{name}, but you did not win." 
      break
    end 

    option_values.each { |number| numbers.delete(number)}
  end
end