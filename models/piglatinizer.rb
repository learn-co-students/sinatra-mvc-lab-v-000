class PigLatinizer
  def piglatinize(word)
    if word.chars.first.match(/[^aeiouAEIOU]/)
      array = word.split("")
      first_vowel = array.find{|a| a.match(/[aeiou]/) }
      string = array.drop(array.index(first_vowel)).join
      consonent = array[0..array.index(first_vowel)-1].join
      new_word = "#{string}#{consonent}ay"
    else
       new_word = "#{word}way"
    end
  end

  def to_pig_latin

  end


end
