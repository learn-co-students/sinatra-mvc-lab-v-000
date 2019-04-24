class PigLatinizer

  def piglatinize(input)
    @output = []
    parse_sentence(input)
    @output = @output.join(' ')
  end
  
  def parse_sentence(sentence)
    sentence_array = sentence.split(' ')
    sentence_array.each {|word| parse_word(word)}
  end
  
  def parse_word(word)
    word_array = word.split('')
    first_letters = []
    last_letters = []
    
    word_array.each do |letter|
      if !['a','e','i','o','u'].include?(letter.downcase) && first_letters.empty?
        last_letters << letter
      else
        first_letters << letter
      end
    end
    
    if ['a','e','i','o','u'].include?(word_array.first.downcase)
      pl_word = (first_letters << last_letters << "way").join
    else
      pl_word = (first_letters << last_letters << "ay").join
    end
    
    @output << pl_word
  end
end