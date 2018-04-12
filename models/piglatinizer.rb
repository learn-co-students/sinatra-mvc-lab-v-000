class PigLatinizer

#For words that begin with consonant sounds, all letters before the initial vowel are placed at the end of the word sequence. Then, "ay" is added.
#When words begin with consonant clusters (multiple consonants that form one sound), the whole sound is added to the end when speaking or writing.
#For words that begin with vowel sounds, one just adds "way" or "yay" to the end (or just "ay").


  def to_pig_latin(sentence)
    word = sentence.split(" ")
    word.map! {|word| piglatinize(word)}.join(" ")
  end


  def piglatinize(word)
    if word.include?(" ")
       to_pig_latin(word)
    else
      first_split = word.split(/([aeiouAEIOU].*)/)[0]
      second_split = word.split(/([aeiouAEIOU].*)/)[1]
      if first_split == ""
         second_split + "way"
      else
         second_split + first_split + "ay"
      end
    end
  end


end
