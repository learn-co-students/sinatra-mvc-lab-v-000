class PigLatinizer

  attr_reader :text

  def show_text
    @text
  end

  def piglatinize(words)
    @text = words
    converted = ""
    @text.split.collect! do |word|
      # Converts each or single word into Pig Latin
      converted << convert_word(word) + " "
    end
    # Returns converted phrase -- used "collect"
    converted.strip
  end

  def convert_word(word)
    # Converts each or single word into Pig Latin
    newWord = word
    # If word starts with Consonant(s)...
    if word.downcase[0].match(/[bcdfghjklmnpqrstvwxyz]/)
      # Grab (all) Consonant(s) and append them to the end of the word + "ay"
      newWord = word.match(/[aeoui]/).to_a[0] + word.match(/[aeoui]/).post_match + word.match(/[aeoui]/).pre_match + "ay"
    # If word starts with vowel...
    elsif word.downcase[0].match(/[aeoui]/)
      # Append "way"
      newWord = word + "way"
    else
      newWord = "Not a proper word."
    end

    # "Orig = #{word} || converted = #{newWord}"
    newWord
  end

end
