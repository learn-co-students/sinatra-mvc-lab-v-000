class PigLatinizer

  def initialize
  end

  def split_text(text)
    text.split(" ")
  end

  def word_split(word)
    word.split("")
  end

  def starts_vowel(word)
    (word =~ /\A(?=[aeiou])/i) != nil
  end

  def starts_cons(word)
    (word =~ /\A(?=[^aeiou])(?=[a-z])/i) != nil
  end

  def starts_cons_cluster(word)
    (word =~ /\A(?=[^aeiou]{2,})(?=[a-z])/i) != nil
  end

  def is_vowel?(letter)
    (letter =~ /^[aeiou]$/i) != nil
  end

  def piglatinize(word)
    #if the word starts with a consonant cluster, add "ay" to the cluser and move it to the end
    if starts_cons_cluster(word)
      #find the cluster, move it to the end
      not_vowel = true
      starting_letters = ""
      i = 0
      while not_vowel
        starting_letters+=word_split(word)[i]
        not_vowel = false if is_vowel?(word_split(word)[i+1])
        i+=1
      end
      return word_split(word).drop(starting_letters.length).join('')+starting_letters+"ay"
    #if the word starts with a consonant, add "ay" to first letter and move it to the end
    elsif starts_cons(word)
      return word_split(word).drop(1).join('')+word_split(word)[0]+"ay"
    #if the word starts with a vowel, just add "yay" to end of the word
    elsif starts_vowel(word)
      return word+"way"
    else
      return "Something you typed was not a word"
    end
  end


  def to_pig_latin(text)
    words = []
    split_text(text).each do |w|
      words << piglatinize(w)
    end
    words.join(" ")
  end

end
