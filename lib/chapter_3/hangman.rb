# hangman.rb

class Hangman
  attr_accessor :char_guessed, :end
  attr_reader :format_word, :guessed_format,:guesses

  def initialize
    @word = "health"
    @len = @word.length
    @guessed_format = []
    @char_guessed = Array.new(@len, false)
    @guesses = Array.new
    @end = false
    self.format_word
  end
    
  def format_char(index)
      form = nil
      unless index == @len - 1
        form = "_ "
      else
        form = "_"
      end
      return form
  end

  def guess
    puts "Enter a character or enter your guess for the word."
    @guesses.append(gets.chomp)
  end
  
  def process_guess
    @char_guessed = Array.new(@len, true) and puts "Hurray" and @end = true if @word == guesses[-1]
    # @word.each_char do |chr|
    #   if @word.inlude?(guesses[-1])
    #  end
  end

  def format_word
    guessed_format.clear
    index = 0
    self.char_guessed.each do |guessed|
        if guessed
          @guessed_format.append(@word[index])
        else
          @guessed_format.append(format_char(index))
        end
        index += 1
    end
    puts guessed_format.join # remove at the end
  end

  def play
    until @end
      self.format_word
      guess
      process_guess
      self.format_word
    end
  end
end

hm = Hangman.new
hm.play

  #allow the whole word to be guess also.
  #   ex. "help" as "h e l p".
  #Once the word has been guessed. Ask if they want to play again.