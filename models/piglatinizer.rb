require 'pry'

class PigLatinizer
  attr_accessor :words

  def initialize(words)
    @words = words
  end

  def piglatinize
    binding.pry
    @words.split("")
  end
end
