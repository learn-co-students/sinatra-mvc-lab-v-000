class PigLatinizer
  attr_accessor :phrase, :pl_phrase

  def initialize(text)
    @phrase = text.split(" ")
  end

  def piglatinize
    @pl_phrase = self.phrase.collect do |word|
      !!word.match(/\A[aeiou]/i) ?  vowel_first(word) : consonant_first(word)
    end
    first_word =  @plphrase.shift.downcase.capitalize
    @pl_phrase.unshift(first_word)
    @pl_phrase.join(" ")
  end

  def vowel_first(word)
    word += "way"
  end

  def consonant_first(word)
    new_word = []
    word.each_char do |char|
      char.consonant? ?  new_word.push(char) : new_word.unshift(char)
    end
    new_word.join += "ay"
  end

  def consonant?
    !self.match(/[aeiou]/)
  end


end  # End of Class
