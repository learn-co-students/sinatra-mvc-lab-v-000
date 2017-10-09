class PigLatinizer
  def piglatinize(text)
    pig_latin = text
    first_vowel_index = pig_latin.index(/[aeiouAEIOU]/)
    if first_vowel_index == 0
      pig_latin += "way"
    else
      opening_letters = pig_latin.slice(0,first_vowel_index)
      pig_latin = pig_latin.gsub(opening_letters, "") + "#{opening_letters}ay"
    end
  end

  def to_pig_latin(text)
    words = text.split(" ")
    pig_latin = words.collect do |word|
      first_vowel_index = word.index(/[aeiouAEIOU]/)
      if first_vowel_index == 0
        word += "way"
      else
        opening_letters = word.slice(0,first_vowel_index)
        word = word.sub(opening_letters, "") + "#{opening_letters}ay"
      end
    end
    pig_latin.join(" ")
  end
end
