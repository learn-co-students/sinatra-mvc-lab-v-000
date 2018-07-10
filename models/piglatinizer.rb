class PigLatinizer
  attr_reader :user_phrase

  CONSONANTS = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
  TWO_LETTER_CONSONANT_CLUSTERS = ["bl", "br", "dr", "dw", "fl", "fr", "gl", "gr", "gw", "kl", "kr", "ph", "pl", "pr", "qu", "sk", "sl", "sm", "sn", "sp", "st", "sw", "th", "tr", "tw", "wh"]
  THREE_LETTER_CONSONANT_CLUSTERS = ["phl", "phr", "scr", "shr", "spl", "spr", "squ", "str", "thr"]
  VOWELS = ["a", "e", "i", "o", "u"]

  def piglatinize(user_phrase)
    user_phrase.split.map do |word|
      first_letter = word[0]
      first_two_letters = word[0, 2]
      first_three_letters = word[0, 3]
      if THREE_LETTER_CONSONANT_CLUSTERS.include? first_three_letters.downcase
        base = word.downcase.gsub(/^[a-z]{3}/, "")
        "#{base}" + "#{first_three_letters}" + "ay"
      elsif TWO_LETTER_CONSONANT_CLUSTERS.include? first_two_letters.downcase
        base = word.downcase.gsub(/^[a-z]{2}/, "")
        "#{base}" + "#{first_two_letters}" + "ay"
      elsif CONSONANTS.include? first_letter.downcase
        base = word.downcase.gsub(/^[a-z]/, "")
        "#{base}" + "#{first_letter}" + "ay"
      elsif VOWELS.include? first_letter.downcase
        "#{word}" + "way"
      end
    end.join(" ")
  end

end
