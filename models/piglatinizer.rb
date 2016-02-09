require 'pry'
class PigLatinizer
  attr_accessor :phrase

  VOWELS = %w[ a e i o u ]
  CONSONANTS = %w[b c d f g h j k l m n p q r s t v w x y z]

  def initialize
    @phrase = []
  end

  def piglatinize(phrase)
    if phrase.split(' ').length > 1
      to_pig_latin(phrase)
      @phrase
    else
      alter_word(phrase)
      @phrase[0]
    end
    binding.pry
  end

  def alter_word(word)
    word = word.split('')
    loop do
      break if VOWELS.include?(word[0])
      word.rotate! if CONSONANTS.include?(word[0])
    end
    word << 'ay'
    @phrase << word.join('')
  end

  def to_pig_latin(phrase)
    phrase = phrase.split(' ')
    phrase.each do |word|
      if word.length == 1
        @phrase << word
      else
        alter_word(word)
      end
    end
    @phrase = @phrase.join(' ')
  end
end

