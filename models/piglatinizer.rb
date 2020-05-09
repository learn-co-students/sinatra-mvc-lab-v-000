class PigLatinizer
  attr_accessor :user_phrase

  def piglatinize_word(word)
    non_piglatin = ["i", "me", "to", "too", "a", "an", "in", "and", "on"]
    vowels = ["a", "e", "i", "o", "u","A","E","I","O","U"]

    if vowels.include?(word[0])
      word = word + "w"
    elsif !vowels.include?(word[0]) && !vowels.include?(word[1]) && !vowels.include?(word[2])
      word = word.slice(3..-1)+word.slice(0,3)
    elsif !vowels.include?(word[0]) && !vowels.include?(word[1])
      word = word.slice(2..-1)+word.slice(0,2)
    else
      word = word.slice(1..-1)+word.slice(0)
    end
    word << "ay"
  end

    def to_piglatinize_sentence(string)
      string.split.collect{|word| piglatinize_word(word)}.join(" ")
    end

    def piglatinize(string)
      string.split(" ").length==1 ? piglatinize_word(string) : to_piglatinize_sentence(string)
    end
end



  # def is_vowel?(word)
  #   vowels = 'aeiouAEIOU'
  #   vowels.include?(word[0])
  # end
  #
  # def piglatinize(word)
  #
  #   if self.is_vowel?(word)
  #     word.concat('way')
  #   else
  #     word.concat(word.slice!(/^[^aeiouAEIOU]*/i || "")) + 'ay'
  #   end
  # end

  # def to_pig_latin(phrase)
  #   word_array = phrase.split(" ")
  #   @piglatinized_phrase = word_array.collect {|word| piglatinize(word)}.join(" ")
  # end
  #
  # def to_pig_latin(phrase)
  #   phrase.split.collect {|word| piglatinize(word)}.join(' ')
  # end
