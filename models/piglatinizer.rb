require "pry"
class PigLatinizer

  def piglatinize(word)
    append=""
    if word[0].downcase.scan(/[aeiou]/).length >0
       append ="way"
     else
       append="ay"
     end
       index= word.downcase.index(/[aeiou]/)
       length=word.length
       if index>0
       word1=word[0..index-1]
       word2=word[index..length-1]
      piglatin=word2 + word1 + append
    else
      piglatin=word+append
    end
     piglatin
  end

  def to_pig_latin(sentence)
  array=sentence.split(" ")
  str=""

  array.each_with_index do |word,index|
    if index < array.length-1
    str= str + piglatinize(word) + " "
  else
    str=str + piglatinize(word)
  end
  end
  str
  end
end
