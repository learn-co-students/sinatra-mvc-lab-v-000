class PigLatinizer

  def piglatinize(user_input)
    if user_input.split.size == 1
      piglatinize_word(user_input)
    else
      piglatinize_sentence(user_input)
    end
  end

  def piglatinize_word(word) #<< "pork"
    consonant = word.match(/[bcdfghjklmnpqrstvwxyz]/)  #scan returned array of strings
    vowel = word.match(/[aeoui]/)
    if word.start_with?(consonant[0])
      word[1..3] + word[0] + "ay"
    elsif word.start_with?(consonant[0]) && consonant[1]
      word << word[0..1] + "ay"
    elsif word.start_with?(consonant[0]) && consonant[1] && consonant [2]
      word << word[0..2] + "ay"
    else word.start_with?(vowel[0])
      word << "ay"
    end
      # if word starts with 1 consonant
        # take 1 consonant, move to end of string, add ay after
      # if word starts with 1+ consonant
        #take all consonants, move to end of string, add ay after
      # if word starts with 1 vowel
        # add ay to end of word
  end

  def piglatinize_sentence(sentence)

  end

end

# identify words start with consonants and move consonants to end of string
# add ay to end of string after consonants
# identify words start with vowels and ay to end of those strings
