class PigLatinizer
  attr_reader :text
  
  def to_pig_latin(phrase) #can i do this on one line?
    #split into words
    words = phrase.split(" ")
    #latinize each word
    finished_words = latinize(words)
    #build back into sentance
    finished_sentance = finished_words.join(" ")
    #return value
    finished_sentance
  end

  def latinize(words) #return array of latinized words
    words.collect do |word|
      piglatinize(word)
    end
  end

  def piglatinize(word)
    if is_vowel?(word[0])
      word += "way"
    elsif !is_vowel?(word[0]) && !is_vowel?(word[1])
      split_word = word.split /([aeiou].)/            ###Split into array at the vowels
      latinized_word = split_word.insert(-1, split_word.delete_at(0)).join  ###move first element to end and join to string
      latinized_word += "ay"
    else
      char_to_move = word.slice!(0)
      word += char_to_move + "ay"
    end
  end

  def is_vowel?(letter)
    letter.downcase =~ /[aeoiu]/
  end
end
