class PigLatinizer

  def word_splitter(text)
    text.split(" ")
  end

  def piglatinize(word)
    if /[aeiou]/.match(word[0].downcase)
      "#{word}way"
    else
      vowel_index = word.index(/[aeiou]/)
      "#{word[vowel_index..-1]}#{word[0...vowel_index]}ay"
    end
  end
  
  def to_pig_latin(text)
    word_splitter(text).collect {|word| piglatinize(word)}.join(" ")
  end
end