class PigLatinizer

  attr_accessor :text
  def initialize(text)
    @text = text
  end

  def piglatinize(word)
    if word[0].match(/[aeiou]/)
       if word == "an" || word == "and" || word == "in" || word == "a"
         return word
       else
        word = word + "ay"
        return word
      end
    else
      first_vowel = word.scan(/[aeouiy]/).first
      i = 0
        while word[i] != first_vowel
            word = word + "#{word[i]}"
            word.slice!(i)
        end
      return word + "ay"
    end
  end

  def to_pig_latin
    array = @text.split(" ")
    array.map! {|word| piglatinize(word)}
    array.join(" ")
  end
end