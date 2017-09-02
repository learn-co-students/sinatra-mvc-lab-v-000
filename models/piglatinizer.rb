class PigLatinizer 

  def piglatinize(word)
    vowels = %w[a e i o u A E I O U]
    consonants = %w[b c d f g h j k l m n p q r s t v w x y z]
    ending = "ay"
    ay_check = word.split(//).last(2).join

    if vowels.include?(word[0])  
      pigged = word + "w" + ending

    elsif consonants.include?(word[0]) && vowels.include?(word[1])
      pigged = word[1..-1] + word[0] + ending
    elsif ay_check == "ay"
      pigged = "ay" + word 
    elsif word[0] == "q" && word[1] == "u"
      pigged = word[1..-1] + word[0] + ending
    elsif consonants.include?(word[0]) && consonants.include?(word[1]) && word.include?("ay")
      pigged = word[2..-1] + word[0] + word[1] + ending 
    elsif consonants.include?(word[0]) && consonants.include?(word[1])
      pigged = word[2..-1] + word[0] + word[1] + ending
    end
    pigged
  end

  def to_pig_latin(sentence)
    @new_sentence = []
    sentence.split.each do |word|
      @new_sentence << piglatinize(word)
    end
    @new_sentence.join(" ")
  end
  
end

