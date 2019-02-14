class PigLatinizer

  def piglatinize(user_input)
    if user_input.split.size == 1
      piglatinize_word(user_input)
    else
      piglatinize_sentence(user_input)
    end
  end

  def consonant?(char)
    !char.match(/[aAeEiIoOuU]/)
  end

  def piglatinize_word(word) #<< "please"
    if !consonant?(word[0]) #<< start with vowel
      word + "way"
    elsif consonant?(word[0]) && consonant?(word[1]) && consonant?(word[2])
      word[3..-1] << word[0,3] + "ay"
    elsif consonant?(word[0]) && consonant?(word[1]) #<<
      word[2..-1] << word[0,2] + "ay"
    elsif consonant?(word[0])
      word[1..-1] << word[0] + "ay"
    end

  end

  def piglatinize_sentence(sentence)
    words = sentence.split(/ /)
    piglatinize_word(words)
    binding.pry

    words.join(" ")
    # break down sentence into each word as strings
    # run each word through this method first
    # then join each word
    # binding.pry

  end

end

# identify words start with consonants and move consonants to end of string
# add ay to end of string after consonants
# identify words start with vowels and ay to end of those strings

# consonant = word.match(/[bcdfghjklmnpqrstvwxyz]/)  #scan returned array of strings
# vowel = word.match(/[aeoui]/)
