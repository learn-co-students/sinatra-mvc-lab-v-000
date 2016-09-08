#your text analyzer model code will go here.
class PigLatinizer
  attr_accessor :text

  def initialize(text = nil)
    @text = text
  end

  def letters_with_vowel(word)
    second_chunk = word[/[aeiou](.*)/i]
    second_chunk
  end

  def letters_before_vowel(word)
    first_vowel_position = word.index(/[aeiou]/i)
    first_chunk = word[0,first_vowel_position]
    first_chunk
  end

  def piglatinize(word)
    if word[0] =~ /[aeiou]/i
      pig =  "#{word}" + "way"
      else
        pig = "#{letters_with_vowel(word)}" + "#{letters_before_vowel(word)}" + "ay"
      end
    pig
  end

  def to_pig_latin(string)
    sentence = ""
    text_array = string.split(" ")
    text_array.each do |word|
      sentence += "#{piglatinize(word)} "
    end
    sentence
  end

end
