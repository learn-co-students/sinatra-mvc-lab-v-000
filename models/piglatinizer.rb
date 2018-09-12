class PigLatinizer 
  
  def piglatinize(input) 
    output = (input.split(" ").length == 1) ? piglatinize_word(input) : piglatinize_sentence(input)
    puts output 
    output
  end 
  
  def consonant?(char)
    !char.match(/[aAeEiIoOuU]/)
  end 
  
  def piglatinize_word(word)
    # word starts with a vowel
    if !consonant?(word[0])
      word = word + "w"
    # word starts with three consonants
    elsif consonant?(word[0]) && consonant?(word[1]) && consonant?(word[2])
      word = word.slice(3..-1) + word.slice(0, 3)
    # word starts with two consonants
    elsif consonant?(word[0]) && consonant?(word[1])
      word = word.slice(2..-1) + word.slice(0, 2)
    #word starts with one consonant
    else
      word = word.slice(1..-1) + word.slice(0)
    end 
    word << "ay"
  end 
  
  def piglatinize_sentence(sentence)
    sentence.split.collect {|word| piglatinize_word(word)}.join(" ")
  end 
  
end 