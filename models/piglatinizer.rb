class PigLatinizer
  attr_reader :text

  def piglatinize(text)
    @text = text.downcase
    if text.length == 1
      piglatinize_word
    else
      piglatinize_sentence
      # binding.pry
    end
  end

  def piglatinize_sentence

  end

  def piglatinize_word(word)
    consonant = text.scan(/[bcdfghjklmnpqrstvwxyz]/)
    vowel = text.scan(/[aeoui]/)

    if word.start_with?(consonant)
      # if word starts with 1 consonant
        # take 1 consonant, move to end of string, add ay after
      # if word starts with 1+ consonant
        #take all consonants, move to end of string, add ay after
      # if word starts with 1 vowel
        # add ay to end of word

  end

end

# identify words start with consonants and move consonants to end of string
# add ay to end of string after consonants
# identify words start with vowels and ay to end of those strings
