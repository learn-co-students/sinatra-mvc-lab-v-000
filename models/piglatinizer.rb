class PigLatinizer

  def piglatinize(user_phrase)
      @user_phrase = user_phrase
      string = @user_phrase
      words = string.split(" ")
      phrase = words.collect  {|word| piglatinize_word(word)}
      phrase.join(" ")
  end
  
  def piglatinize_word(word)
      first_letter = word[0].downcase
  
      if ["a", "e", "i", "o", "u"].include?(first_letter)
        # piglatinize word that starts with a vowel
        "#{word}way"
      else
        consonants = []
        consonants << word[0]
          if ["a", "e", "i", "o", "u"].include?(word[1]) == false
            consonants << word[1]
            if ["a", "e", "i", "o", "u"].include?(word[2]) == false
              consonants << word[2]
            end
          end
        # piglatinize word that starts with a consonant
        "#{word[consonants.length..-1] + consonants.join + "ay"}"
      end
  end

  # MY CODE TO FIX AND REFACTOR TO WORK    
  # def piglatinize_word(word)
  #   @word = word.downcase
    
  #   if @word.slice!(0) == "a" || "e" || "i" || "o" || "u"
  #     piglatinized_word = @word.join("way")
  #   else
  #     letters_removed = []
  #     letters_removed << word[0]
  #       if ["a", "e", "i", "o", "u"].include?(word[1]) == false
  #         letters_removed << word[1]
  #         if ["a", "e", "i", "o", "u"].include?(word[2]) == false
  #           letters_removed << word[2]
  #         end
  #       end
  #       # piglatinize word that starts with a consonant
  #       piglatinized_word = "#{@word[letters_removed.length..-1] + letters_removed.join + "ay"}"
  #   end
  # piglatinized_phrase_or_word << piglatinized_word
  # end
end