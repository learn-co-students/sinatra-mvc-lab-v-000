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
      converted << convert_word(word)
    end
    # Returns converted phrase -- used "collect"
    converted
  end

  def convert_word(word)
    # Converts each or single word into Pig Latin
    word
  end

end
