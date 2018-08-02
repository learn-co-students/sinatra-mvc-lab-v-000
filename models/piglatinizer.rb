require 'pry'

class PigLatinizer
  attr_accessor :text

  def initialize(text = "")
    @text = text
  end

  def piglatinize(text)
    split_text = text.split(" ")
    if split_text.size > 1
      new_array = []
      split_text.each do |word|
          if vowel?(word) == true
            @new_word = "#{word}way"
            new_array << @new_word
          elsif double_consonant(word) == true
            double(word)
            new_array << @new_word
          elsif triple_consonant(word) == true
            triple(word)
            new_array << @new_word
          else
            consonant(word)
            new_array << @new_word
          end
        end
      new_array.join(" ")
    else
      if vowel?(text) == true
        @new_word = "#{text}way"
      elsif double_consonant(text) == true
        double(text)
      elsif triple_consonant(text) == true
        triple(text)
      else
        consonant(text)
      end
      @new_word
    end
  end

  def vowel?(word)
    split = word.split("")
    if split[0] =~ /[aeiouAEIOU]/
      true
    else
      false
    end
  end

  def consonant(word)
    split = word.split("")
    dropped = split.drop(1)
    merged = dropped.join
    @new_word = "#{merged}#{split[0]}ay"
  end

  def double_consonant(word)
    split = word.split("")
    if split[0] =~ /[qwrtypsdfghjklzxcvbnmQWRTYPSDFGHJKLZXCVBNM]/ && split[1] =~ /[qwrtypsdfghjklzxcvbnmQWRTYPSDFGHJKLZXCVBNM]/
      true
    else
      false
    end
  end

  def double(word)
    split = word.split("")
    dropped = split.drop(2)
    merged = dropped.join
    @new_word = "#{merged}#{split[0]}#{split[1]}ay"
  end

  def triple_consonant(word)
    split = word.split("")
    if split[0] =~ /[qwrtypsdfghjklzxcvbnmQWRTYPSDFGHJKLZXCVBNM]/ && split[1] =~ /[qwrtypsdfghjklzxcvbnmQWRTYPSDFGHJKLZXCVBNM]/ && split[2] =~ /[qwrtypsdfghjklzxcvbnmQWRTYPSDFGHJKLZXCVBNM]/
      true
    else
      false
    end
  end

  def triple(word)
    def double(word)
      split = word.split("")
      dropped = split.drop(3)
      merged = dropped.join
      @new_word = "#{merged}#{split[0]}#{split[1]}#{split[2]}ay"
    end
  end

end
