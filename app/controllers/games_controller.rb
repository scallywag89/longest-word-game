require 'open-uri'
require 'nokogiri'

class GamesController < ApplicationController

  def new
    vowels = Array.new(3) { %w[A E I O U].sample }
    letters = Array.new(6) { %w[B C D F G H J K L M N P Q R S T V W X Y Z].sample }
    @letters = vowels.concat(letters).shuffle.to_a
  end

  def score
    @word = params[:word]
    @word_letters = @word.split('')
    @check_guess = @word_letters.all? { |letter| @word_letters.count(letter) <= @letters.count(letter) }

    # incorrect = "Sorry, but #{@word} can't be made out of #{@letters}"
    # invalid = "Sorry, but #{@word} does not seem to be a valid English word..."
    # correct = "Congratulations! #{@word} is a valid English word!"
    # if @word
  end

end
