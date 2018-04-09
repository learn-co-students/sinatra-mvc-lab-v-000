
class PigLatinizer
  attr_reader :text

  def piglatinize(text)
    lowercase_alpha = ('a'..'z').to_a
    capital_alpha = ('A'..'Z').to_a
    alpha = lowercase_alpha + capital_alpha
    vowels = %w[a e i o u A E I O U]
    consonants = alpha - vowels
    if text.split(" ").length == 1
      if text.length == 1 && vowels.include?(text)
        text + "way"
      elsif vowels.include?(text[0])
        text + "way"
      elsif consonants.include?(text[0]) && consonants.include?(text[1]) && consonants.include?(text[2])
        text[3..-1] + text[0..2].downcase + "ay"
      elsif consonants.include?(text[0]) && consonants.include?(text[1])
        text[2..-1] + text[0..1] + "ay"
      elsif consonants.include?(text[0])
        text[1..-1] + text[0] + "ay"
      end
    elsif text.split(" ").length > 1
      piglatinized_sentence = ""
      text.split(" ").each do |text|
        if text.length == 1 && vowels.include?(text)
          section = text + "way"
          piglatinized_sentence = piglatinized_sentence + " " + section
        elsif vowels.include?(text[0])
          section = text + "way"
          piglatinized_sentence = piglatinized_sentence + " " + section
        elsif consonants.include?(text[0]) && consonants.include?(text[1]) && consonants.include?(text[2])
          section = text[3..-1] + text[0..2] + "ay"
          piglatinized_sentence = piglatinized_sentence + " " + section
        elsif consonants.include?(text[0]) && consonants.include?(text[1])
          section = text[2..-1] + text[0..1] + "ay"
          piglatinized_sentence = piglatinized_sentence + " " + section
        elsif consonants.include?(text[0])
          section = text[1..-1] + text[0] + "ay"
          piglatinized_sentence = piglatinized_sentence + " " + section
        end
      end
      piglatinized_sentence[1..-1]
    end
  end

end
