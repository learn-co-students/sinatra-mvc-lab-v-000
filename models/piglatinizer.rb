require 'pry'
class PigLatinizer
  def initialize
  end

  def piglatinize(word)
    vowel = ["a","e","i","o","u","A","E","I","O","U"]
    a = word.scan(/[^aeiouAEIOU]+[aeiouAEIOU+]/)
    if vowel.include?(word.downcase.split('')[0])
      word+"way"
    else
      b = a[0].split('')
      c=b-vowel
      d = c.join
      e=word.sub(d,'')
      e+d+"ay"
    end
  end

  def to_pig_latin(sentence)
    sentence_arr=sentence.split(' ')
    pig_word_arr = sentence_arr.collect{|word|self.piglatinize(word)}
    pig_word_arr.join(' ')
  end
end

binding.pry
