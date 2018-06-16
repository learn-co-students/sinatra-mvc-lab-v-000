class PigLatinizer
  # attr_accessor :text

  def initialize
    # @text = text.downcase
  end


  def piglatinize(text)
    text.split(" ").map do |word|
      if %w(a e i o u A E I O U).include?(word[0])
        word + "way"
      elsif %w(a e i o u A E I O U).include?(word[1])
        word[1..-1] + word[0] + "ay"
      elsif %w(a e i o u A E I O U).include?(word[2])
        word[2..-1] + word[0] + word[1]+ "ay"
      elsif %w(a e i o u A E I O U).include?(word[3])
        word[3..-1] + word[0..2] + "ay"
      end
    end.join(" ")
  end

  # def count_of_words
  #   words = text.split(" ")
  #   words.count
  # end
  #
  # def count_of_vowels
  #   text.scan(/[aeoui]/).count
  # end
  #
  # def count_of_consonants
  #   text.scan(/[bcdfghjklmnpqrstvwxyz]/).count
  # end
  #
  # def most_used_letter
  #   no_spaces = text.gsub(" ", "")
  #   letters = no_spaces.split("")
  #   histogram = Hash[*letters.group_by{ |v| v }.flat_map{ |k, v| [k, v.size] }]
  #   histogram.max_by{ |k, v| v }
  # end
end
