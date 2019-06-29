class PigLatinizer
    # "this" should become "isthay"
    # "is" should become "isway"
    # "HearT" should become "earthay"
    
    # I need to first remove extra characters, whitespace, numbers, etc.
    # Then, convert it all to downcase (to make things easier)
    # Then, isolate each word.
    # Convert each word to Pig Latin (see examples above).
    # Reassemble the words into a phrase, and return the phrase.
    
  def piglatinize(phrase)
    # "Th4is is a Phr%%ase)" becomes ["This", "is", "a", "Phrase"]
    phrase_words = letters_only(phrase).split
    
    # phrase_words.collect do |word|
      # word.downcase (This was a test of the return value.)
      # if (word starts with a vowel)
        # add "way" to the end of the word
      # else # word starts with a consonant
        # Take all of the starting consonants of a word up to the first vowel.
        # Move those consonants to the end of the word to make a new string.
        # Add "ay" to the end of that new string.
      # end
    # end.join(" ")
    
    phrase_words.collect do |word|
      
    end.join(" ")
  end
  
  private
  
  def letters_only(phrase) # Edge case
    # Remove everything from the phrase except letters and whitespace characters.
    # "Th4is is a Phr%%ase)" becomes "This is a Phrase"
    
    phrase.gsub(/[^a-zA-Z\s]/, "")
  end
end