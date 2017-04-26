require 'pry'
class PigLatinizer

  def piglatinize(word)
    if word.match(/\A^[aeiouAEIOU]/)
      word + "way"
    else
      word = word.split("")
      index = word.index {|x| x.match(/[aeiou]/)}
      word << word[0, index]
      word.flatten.slice(index, word.length-1).join + "ay"
    end
  end

  def to_pig_latin(phrase)
    change_phrase = phrase.split(" ")
    change_phrase.collect {|word| self.piglatinize(word)}.join(" ")
  end
end
