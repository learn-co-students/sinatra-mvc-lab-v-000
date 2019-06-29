class PigLatinizer
    # "this" should become "isthay"
    # "is" should become "isway"
    # "HearT" should become "earthay"
    
    # I need to first remove extra characters, whitespace, numbers, etc.
    # Then, convert it all to downcase (to make things easier)
    # Then, isolate each word.
    # Convert each word to Pig Latin (see examples above).
    # Reassemble the words into a phrase, and return the phrase.
    
    # Interesting: a MatchData object (returned from the #match method) recognizes [0] but not #first.
    
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
        # Add "ay" to the end of that new string. Maybe use #append here and above.
      # end
    # end.join(" ")
    
    phrase_words.collect do |word|
      # ["One", "two", "testing"] becomes "Oneway otway estingtay".
      
      if word.start_with?(/[aeiouAEIOU]/) # "either" becomes "eitherway"
        word + "way"
      else # "fire" becomes "irefay" and "smith" becomes "ithsmay"
        # Given the word "testing":
        
        first_consonants = word.match(/[BCDFGHJKLMNPQRSTVWXYZbcdfghjklmnpqrstvwxyz]+/)[0] # "t"
        
        # I can't use #split here. If I split "testing" at "t", then I'll get ["", "es", "ing"] instead of ["", "esting"].
        
        remaining_letters = word.delete_prefix(first_consonants) # "esting"
        
        remaining_letters + first_consonants + "ay" # "estingtay"
      end
    end.join(" ") # end of #collect block
  end # end of #piglatinize method
  
  private
  
  def letters_only(phrase) # Edge case
    # Remove everything from the phrase except letters and whitespace characters.
    # "Th4is is a Phr%%ase)" becomes "This is a Phrase"
    
    phrase.gsub(/[^a-zA-Z\s]/, "")
  end
end