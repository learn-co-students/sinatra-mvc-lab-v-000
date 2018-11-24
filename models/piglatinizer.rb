class PigLatinizer
  attr_reader :text

  def initialize
    @text = text
  end

  def piglatinize(text)
    words = text.split(" ")
    piglatinized_words = []
    words.each do |word|
      if word.length == 2 && word[/([AEIOUaeiou]*)/] == ""
        piglatinized_word = word[/([AEIOUYaeiouy].*)/] + word[/([BCDFGHJKLMNPQRSTVWXZbcdfghjklmnpqrstvwxz]*)/] + "ay"
      elsif word.length > 1 && word[/([AEIOUaeiou]*)/] == ""
        piglatinized_word = word[/([AEIOUaeiou].*)/] + word[/([BCDFGHJKLMNPQRSTVWXYZbcdfghjklmnpqrstvwxyz]*)/] + "ay"
      else
        piglatinized_word = word + "way"
      end
      piglatinized_words << piglatinized_word
    end
    piglatinized_words.join(" ")
  end

end
