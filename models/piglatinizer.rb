class PigLatinizer

  attr_reader :text

  def initialize(text = '')
    @text = text
  end

  def piglatinize(text)
    pig_words = []
    words = text.split
    words.each do |word|
      pig_words << latin_word(word)
    end
    pig_words.join(" ")
  end

  private

  def latin_word(word)
    word = word.strip

    word_array = word.partition(/[aeiouAEIOU]/)
    first_part = word_array.shift
    
    word_array << first_part
    new_word = word_array.join
    if word.start_with?("a", "A", 'E', 'I', 'O', 'U', "e", 'i', 'o', 'u')
      new_word += "way"
    else
      new_word += "ay"
    end
    new_word
  end


end


    
