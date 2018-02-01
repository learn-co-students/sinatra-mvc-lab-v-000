class PigLatinizer

  attr_reader :text

  def piglatinize(word)
    vowels = %w{a e i o u}
    consonants = %w{b c d f g h j k l m n p q r s t v w x y z}
    if vowels.include?(word[0].downcase)
      word = word + "w"
    elsif consonants.include?(word[0].downcase) && consonants.include?(word[1].downcase) && consonants.include?(word[2].downcase)
      word = word.slice(3..-1) + word.slice(0,3)
    elsif consonants.include?(word[0].downcase) && consonants.include?(word[1].downcase)
      word = word.slice(2..-1) + word.slice(0,2)
    else
      word = word.slice(1..-1) + word.slice(0)
    end
    word + "ay"
  end


  def to_pig_latin(sentence)
    sentence.split.collect { |word| piglatinize(word) }.join(" ")
  end

end
