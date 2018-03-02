class PigLatinizer


  def to_pig_latin(str)
    str_arr = str.split(" ")
    str_arr.collect! do |word|
      piglatinize(word)
    end
    str_arr.join(" ")
  end

  def piglatinize(word)
      if word[0,2].downcase == "pl" || word[0,2].downcase == "th" || word[0,2].downcase == "pr" || word[0,2].downcase == "wh"  || word[0,2].downcase == "sk"
        word[2, word.length] + word[0,2] + "ay"
      elsif word[0,3].downcase == "spr" || word[0,3].downcase == "str"
        word[3, word.length] + word[0,3] + "ay"
      elsif
        word[0].downcase.match(/[bcdfghjklmnpqrstvwxyz]/)
        starts_with_consonant(word.to_s)
      elsif word[0].downcase.match(/[aeiou]/)
        starts_with_vowel(word)
      end
  end

  def starts_with_vowel(word)
    "#{word}way"
  end

  def starts_with_consonant(word)
    word.slice(1, word.length) + word[0] + "ay"
  end
end
