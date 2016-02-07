class PigLatinizer
  
  def piglatinize(word)
    first_vowel = word.scan(/[aeiouAEIOU]/).first
    split_array = word.split(//)
    if split_array.count > 1
      # adds 'yay' to the end of the word if
      # the word starts with a vowel
      if split_array.index(first_vowel) == 0
        if ends_with_punc?(split_array.last)
          punctuation = split_array.pop
          split_array << "yay"
          split_array << punctuation
        else
          split_array << "yay"
        end
        split_array.join
      else
        # makes sure punctuation stays at 
        # the end of the word
        if ends_with_punc?(split_array.last) 
          last_syllable = split_array.shift(split_array.index(first_vowel))
          punctuation = split_array.pop
          split_array << last_syllable
          split_array << "ay"
          split_array << punctuation
        else
          last_syllable = split_array.shift(split_array.index(first_vowel))
          split_array << last_syllable
          split_array << "ay"
        end
        split_array.join
      end
    else
      word
    end
  end
  
  def ends_with_punc?(char)
    char.scan(/\p{P}/).count > 0 ? true : false
  end
  
  def to_pig_latin(words)
    sentence = words.split(" ")
    sentence.collect do |word|
      piglatinize(word)
    end.join(" ")
  end
  
end