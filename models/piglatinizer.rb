require 'pry'

class PigLatinizer

  def words_check(text)
    if text.split(" ").count > 1
      self.to_pig_latin(text)
    else
      self.piglatinize(text)
    end
  end

  def piglatinize(word)
    if word[0].match(/[aeiouAEIOU]/)
      return word.concat("way")
    else
      word = word.split("")
      index = word.index{|v| v.match(/[aeiou]/)}
      word.rotate(index).join("").concat("ay")
    end
  end

  def to_pig_latin(sentence)
    wordarray = []
    split_sentence = sentence.split(" ")
    split_sentence.each do |word|
      if word[0].match(/[aeiouAEIOU]/)
        wordarray << word.concat("way")
      else
        split_word = word.split("")
        split_word.find do |letter|
          index = split_word.index {|v| v.match(/[aeiou]/)}
          wordarray << split_word.rotate(index).join("").concat("ay")
        end
      end
    end
    wordarray.flatten.join(" ")
  end

end



