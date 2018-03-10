class PigLatinizer
  attr_accessor :text

  def initialize(text = nil)
    @text = text
  end

  def piglatinize(word)
    if word[1] == nil
      new_word = word << 'way'
    elsif word[0].match(/[^aeiouAEIOU]/).nil?
        new_word = word << 'way'
    elsif word[1].match(/[^aeiouAEIOU]/).nil?
      sliced_letter = word[0,1]
      new_word = word[1..-1] << sliced_letter << 'ay'
    elsif word[2].match(/[^aeiouAEIOU]/).nil?
      sliced_letter = word[0,2]
      new_word = word[2..-1] << sliced_letter << 'ay'
    else
      sliced_letter = word[0,3]
      new_word = word[3..-1] << sliced_letter << 'ay'
    end
    new_word
  end

  def to_pig_latin(text)
    all_words_in_string = text.split(' ')
    latinized_words = []

    all_words_in_string.each do |word|
      latinized_words << piglatinize(word)
    end
    latinized_words.join(" ")
  end


end
