require 'pry'


class PigLatinizer
attr_accessor :text

  def piglatinize(text)
    @text = text
    word= @text.split("")
    choose_pig_latinize_method(word).join
  end

  def to_pig_latin(text)
    @text = text
    split_text.collect do |word|
      if word.length <= 2 && starts_with_vowel(word) && word != "it"
        word
      elsif word != "and"
        word = word.split("")
        choose_pig_latinize_method(word).join
      else
        word
      end
    end.join(" ")
  end

  def choose_pig_latinize_method(word)
    if starts_with_consonant_vowel(word)
      consonant_vowel_pl(word)
    elsif starts_with_consonants(word)
      consonant_consonant_pl(word)
    elsif starts_with_vowel(word)
      vowel_pl(word)
    end
  end


  def consonant_vowel_pl(word)
    if word.last == "."
      last = word.pop
      word << word[0]
      word.shift
      word + ["a","y",last]
    else
      word << word[0]
      word.shift
      word + ["a","y"]
    end
  end

  def consonant_consonant_pl(word)

    if !(word[2].scan(/[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]/).empty?)
      new_word= word + [word[0],word[1],word[2],"a","y"]
      new_word.drop(3)
    else
      new_word= word + [word[0],word[1],"a","y"]
      new_word.drop(2)
    end
  end

  def vowel_pl(word)
    if word.last == "e" && word.first != "a"
      e = word.pop
      word.unshift(e)
      word + ["a","y"]
    else
      word + ["a","y"]
    end
  end

  def starts_with_consonant_vowel(word)
    !(word[0].scan(/[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]/).empty?) && !(word[1].scan(/[aeiouAEIOU]/).empty?)
  end

  def starts_with_consonants(word)

    !(word[0].scan(/[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]/).empty?) && !(word[1].scan(/[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]/).empty?)
  end

  def starts_with_vowel(word)

    !(word[0].scan(/[aeiouAEIOU]/).empty?)
  end

  def split_text
    if @text.split(" ").count > 1
      @text.split(" ")
    end
  end
end
