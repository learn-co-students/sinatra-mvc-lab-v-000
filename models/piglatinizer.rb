class PigLatinizer

  # def piglatinize(word)
  #     vowels = %w{a e i o u}
  #     word.each_char do |chr|
  #     index = word.index(chr)
  #     if index != 0 && vowels.include?(chr.downcase)
  #       consonants = word.slice!(0..index-1)
  #       return word + consonants + "way"
  #     elsif index == 0 && vowels.include?(chr.downcase)
  #       return word + "way"
  #     end
  #   end
  # end
  #   #
  #   collect over each word in string and call piglatinize method on each word
  # end

  def piglatinize(input_str)
    x = (input_str.split(" ").length == 1) ? piglatinize_word(input_str) : piglatinize_sentence(input_str)
    puts x
    x
  end

  private

  def consonant?(char)
    !char.match(/[aAeEiIoOuU]/)
  end

  def piglatinize_word(word)
    # word starts with vowel
    if !consonant?(word[0])
      word = word + "w"
    # word starts with 3 consonants
    elsif consonant?(word[0]) && consonant?(word[1]) && consonant?(word[2])
      word = word.slice(3..-1) + word.slice(0,3)
    # word starts with 2 consonants
    elsif consonant?(word[0]) && consonant?(word[1])
      word = word.slice(2..-1) + word.slice(0,2)
    # word starts with 1 consonant
    else
      word = word.slice(1..-1) + word.slice(0)
    end
    word << "ay"
  end

  def piglatinize_sentence(sentence)
    sentence.split.collect { |word| piglatinize_word(word) }.join(" ")
  end


end
