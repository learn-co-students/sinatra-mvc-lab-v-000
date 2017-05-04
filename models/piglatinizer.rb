class PigLatinizer

  def piglatinize(word)
    @word = word
    if !!(starts_with_consonant_clusters?)
      replace_consonant_cluster
    elsif !!(starts_with_consonant?)
      replace_consonant
    elsif !!(starts_with_vowel?)
      replace_vowel
    else
      puts "Is this a word??"
    end
  end

  def to_pig_latin(sentence)
    array_of_sentence = sentence.split
    array_of_sentence.collect do |word|
      piglatinize(word)
    end.join(" ")
  end


  def starts_with_consonant_clusters?
    consonant_clusters = ["spr", "str", "sm", "sh", "th", "ch", "ph", "qu", "wh", "pl", "pr", "sk", "st"]
    consonant_clusters.detect do |cluster|
      @word.downcase.start_with? (cluster)
    end
  end

  def replace_consonant_cluster
    piglatinized = @word.split("")
    amount_of_letters = starts_with_consonant_clusters?.size
    move_to_back = piglatinized.shift(amount_of_letters)
    piglatinized.join("") + move_to_back.join("") + "ay"
  end

  def starts_with_consonant?
    consonant = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
    consonant.detect do |c|
      @word.downcase.start_with? (c)
    end
  end

  def replace_consonant
    piglatinized = @word.split("")
    move_to_back = piglatinized.shift(1)
    piglatinized.join("") + move_to_back.join("") + "ay"
  end

  def starts_with_vowel?
    vowel = ["a", "e", "i", "o", "u"]
    vowel.detect do |v|
      @word.downcase.start_with? (v)
    end
  end

  def replace_vowel
    @word + "way"
  end

end
