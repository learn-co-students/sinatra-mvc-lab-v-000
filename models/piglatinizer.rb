class PigLatinizer

  def piglatinize(word)
    if starts_with_vowel?(word)
      add_way(word)
    elsif has_triple_consonant?(word)
      switch_triple_consonant(word)
    elsif has_consonant_cluster?(word)
      switch_consonant_cluster(word)
    elsif starts_with_consonant?(word)
      consonant_switch(word)
    end
  end

  def add_way(word)
    word + "way" 
  end

  def consonant_switch(word)
    first_letter = word.slice!(0)
    word + add_ay(first_letter)
  end

  def starts_with_vowel?(word)
    word.downcase.start_with?('a','e','i','o','u') 
  end

  def starts_with_consonant?(word)
    !word.downcase.start_with?('a','e','i','o','u') 
  end

  def add_ay(letter)
    letter + "ay"
  end

  def has_consonant_cluster?(word)
    /^[thprchksmstlw]{2}/.match(word)
  end

  def switch_consonant_cluster(word)
    consonants = word.slice!(0..1)
    word + add_ay(consonants)
  end

  def has_triple_consonant?(word)
     /^[hcrplsqt]{3}/.match(word.downcase)
  end

  def switch_triple_consonant(word)
    consonants = word.slice!(0..2)
    word + add_ay(consonants)
  end

  def to_pig_latin(sentence)
    words = sentence.split(' ')
    words.map do |word|
      piglatinize(word)
    end.join(' ')
  end

end
