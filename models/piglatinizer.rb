class PigLatinizer
  attr_reader :text

  def piglatinize(word)
    vowels = ["a", "e", "i", "o", "u"]
    invalid_words = ["i", "me", "to", "too", "a", "an", "in", "and", "on", "until"]

    if invalid_words.include?(word.downcase)
      word << "way"
    elsif !vowels.include? word[0].downcase
      new_array << word[0]
      new_word = "#{word}"[1..-1]
      return new_word << new_array.join + "ay"
    end

    # if invalid_words.include?(word.downcase)
    #   word << "way"
    # elsif !vowels.include? word[0].downcase
    #   new_array = []
    #   new_word = word
    #   while !vowels.include? new_word[0].downcase
    #     new_array << word[0]
    #     new_word = "#{word}"[1..-1]
    #     if vowels.include? new_word[0].downcase
    #       return new_word << new_array.join + "ay"
    #     end
    #   end
    # elsif vowels.include? word[0].downcase
    #    word << "way"
    # else
  end

  def to_pig_latin(sentence)
    sentence.split.collect{|word| piglatinize(word)}.join(" ")
  end

end
