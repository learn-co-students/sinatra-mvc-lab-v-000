class PigLatinizer

  attr_accessor :word

  def initialize
    @word = word
  end

  def piglatinize(str)
    alpha = ('a'..'z').to_a
    vowels = %w[a e i o u]
    consonants = alpha - vowels
    two_letter_consonants = ["sp", "pr", "qu", "th", "br"]
    words = str.split(" ")
    result = []
    words.each do |word|
      if vowels.include?(word.downcase[0])
        new_str = word + "way"
        result << new_str
      elsif consonants.include?(word.downcase[0]) && consonants.include?(word.downcase[1]) && consonants.include?(word.downcase[2])
        new_str = word[3..-1] + word[0..2] + "ay"
        result << new_str
      elsif consonants.include?(word.downcase[0]) && consonants.include?(word.downcase[1])
        new_str = word[2..-1] + word[0..1] + "ay"
        result << new_str
      elsif consonants.include?(word.downcase[0])
        new_str = word[1..-1] + word[0] + "ay"
        result << new_str
      else
        result << word # return unchanged
      end

    end
    result.join(" ")
  end

end
