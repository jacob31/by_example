# hangman.rb


  #start game
  class Hangman
    attr_accessor :format_word, :guess, :guessed_format, :char_guessed

    def initialize
      @word = "health"
      @len = @word.length
      @guessed_format = []
      @char_guessed = Array.new(@len, false)
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

  def request_guess
    puts "Enter a character or enter your guess for the word."
    @guess = gets.chomp
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
    puts guessed_format.join
  end
end

  #allow the whole word to be guess also.
  #   ex. "help" as "h e l p".
  #Once the word has been guessed. Ask if they want to play again.






