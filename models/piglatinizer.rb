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
    letters_only(phrase).downcase
  end
  
  private
  
  def letters_only(phrase)
    phrase.gsub(/[^a-zA-Z]/, "")
  end
end