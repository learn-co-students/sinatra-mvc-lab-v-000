class PigLatinizer
  # attr_accessor :sentence, :words

  VOWELS = %w[a e i o u].freeze

  # def initialize(sentence)
  #   self.sentence = sentence
  #   self.words = sentence.split(' ').map(&:downcase)
  # end

  def piglatinize(word)
    l_word = word.downcase
    return "#{word}way" if VOWELS.include?(l_word[0])

    i = l_word.index(/[aeiou]/)

    "#{word[i..-1]}#{word[0..i - 1]}ay"
  end

  # def pg_all
  #   words.map { |e| latinize_word(e) }
  # end

  def to_pig_latin(sentence)
    words = sentence.split(' ')
    words.map { |e| piglatinize(e) }.join(' ')
  end
end
