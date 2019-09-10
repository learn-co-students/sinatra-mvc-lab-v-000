class PigLatinizer
  attr_reader :text

  def piglatinize(text)

    # words_array = text.split

  #   words_array.map do |word|
  #     if word.start_with?(/[aeiouAEIOU]/)
  #       word + "way"
  #     else
  #       consonant = word.match(/[BCDFGHJKLMNPQRSTVWXYZbcdfghjklmnpqrstvwxyz]+/)[0]
  #
  #       remaining_letters = word.delete_prefix(consonant)
  #
  #       remaining_letters + consonant + "ay"
  #     end
  #   end.join(" ")
  # end


    if text.include?(" ")
      split_text(text)
    elsif ["a", "e", "i", "o", "u"].include?(text[0].downcase)
        text + "way"
    else
      parts = text.split(/([aeiou].*)/) #splits the word in two starting with the first vowel. ex. "hello" becomes "h" and "ello"
      parts[1]+parts[0]+"ay" # "ello" + "h" + "ay"
    end
  end

  def split_text(text)
    words_array = text.split(" ")
    words_array.map do |word|
      piglatinize(word)
    end.join(" ") #rejoins the words in the phrase after piglatinizing them each individually
  end
end
