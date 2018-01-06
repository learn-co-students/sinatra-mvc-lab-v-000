class PigLatinizer

  attr_reader :text

  # def initialize(text)
  #   @text = text
  # end

  def piglatinize(word)
    if word.chr.match(/[aeouiAEIOU]/)
    	word << "way"
    else
    	split_word = word.split(/([aeiouAEIOU].*)/)
    	consonant_group = split_word.delete_at(0)
    	(split_word << "#{consonant_group + 'ay'}").join("")
    end
  end

  def to_pig_latin(text)
    word_array = text.split(" ")
    word_array.map {|word| piglatinize(word)}.join(" ")
  end

end
