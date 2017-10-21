class PigLatinizer
  attr_accessor :phrase, :pl_phrase

  def initialize(text)
    @phrase = text.split(" ")
  end

  def piglatinize
    @pl_phrase = self.phrase.collect do |word|
      !!word.match(/\A[aeiou]/i) ?  vowel_first(word) : consonant_first(word)
    end
    @pl_phrase.first.capitalize!
    @pl_phrase.join(" ")
  end

  def vowel_first(word)
    word += "way"
  end

  def consonant_first(word)
    word_array = word.split("")
    word_array.


  end

end  # End of Class
