require 'iglatinpay'
require 'pry'


class PigLatinizer

  attr_reader :text

  def initialize(text)
    @text = text.downcase
  end

  def translate
    @text.to_piglatin
  end

  # def self.test
  #   hello = "Hello"
  #
  #   puts hello.to_piglatin
  #   puts "Adam".to_piglatin
  # end


end

PigLatinizer.test
