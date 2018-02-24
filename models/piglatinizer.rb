<<<<<<< HEAD
class PigLatinizer

  def piglatinize(word)
    vowel_idx = word =~ (/[aeiou]/i)
=======
class PigLatinize

  def translate(word)
    vowel_idx = word =~ /[aeiou]/
>>>>>>> a34be022909f9aa6041acc3737746659df5c6033
    if vowel_idx == 0
      word += "way"
    else
      word[vowel_idx..-1] + word[0..vowel_idx-1] + "ay"
    end
  end

<<<<<<< HEAD
  def to_pig_latin(sentence)
    words = sentence.split(" ")
    words.map{|w| piglatinize(w) }.join(" ")
=======
  def piglatinizer(sentence)
    words = sentence.split(" ")
    words.map{|w| translate(w) }.join(" ")
>>>>>>> a34be022909f9aa6041acc3737746659df5c6033
  end

end
