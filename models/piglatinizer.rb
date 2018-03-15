class PigLatinizer

  def piglatinize(word)
     if word.start_with?(/[aeiouAEIOU]/)
       word += "way"
     else
       first_vowel_position = word.index(/[aeiou]/)
       word = word[first_vowel_position..-1] + word[0..first_vowel_position-1] + "ay"
     end
  end

  def to_pig_latin(user_input)
    words = user_input.split(" ")
    words.collect do |word|
      piglatinize(word)
    end.join(" ")
  end
end
