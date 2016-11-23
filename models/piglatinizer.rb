require 'pry'
class PigLatinizer

  def piglatinize(word)
    #binding.pry
    if word.slice(0).downcase.scan(/[bcdfghjklmnpqrstvwxyz]/)[0] == word.slice(0)
      vowel = word =~ /[aeoui]/
      word.slice(vowel..word.size) + word.slice(0..vowel - 1) + "ay"
    else
      word + "way"
    end
  end

end
