# hangman_spec.rb

require_relative "../lib/chapter_3/hangman.rb"

describe 'Hangman' do
  describe 'initialization' do
    it 'should be defined' do
      expect { Hangman }.not_to raise_error
    end
  end
end
