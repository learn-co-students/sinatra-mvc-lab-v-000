class PigLatinizer

  def to_pig_latin(words)
    pig_latin = words.gsub(".", "").split(" ").map do |word|
      piglatinize(word)
    end
    pig_latin.join(" ")
  end

  def piglatinize(word)
    letters_array = word.split("")

    if letters_array[0].match(/[AEIOUaeiou]/)
      letters_array << "way"
    elsif letters_array[0].match(/[^AEIOUaeiou]/)
      vowel_index = letters_array.find_index { | letter | letter.match(/[AEIOUaeiou]/) }
      first_letters = letters_array.slice!(0..vowel_index-1)
      letters_array << first_letters.join("") + "ay"
    else
      first_letter = letters_array.shift
      letters_array << first_letter + "ay"
    end
    letters_array.join("")
  end

end
