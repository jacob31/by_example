# hangman.rb
require 'time'
word_list = ['dictionary', 'university', 'employment', 'encourage', 'mountain', \
             'tricycle', 'testimony', 'transportation', 'education', 'transformation']

# guesses = word.chars.map { |element| element = nil}

# puts "My secret word: '#{hide_word.join}'"
# puts "Your guesses:    #{guesses}"

class Hangman

  def initialize
    puts "... populaitong word to be guessed."
    sleep(0.5)
    @@word = self.get_word
  end

  def request_input
    puts "Key in a character or quess the word."
    input = gets.chomp
  end

  def self.get_word
    word = "dictionary"
    return word
  end
  def self.hide_word
    
  end
end









