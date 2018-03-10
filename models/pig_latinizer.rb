class PigLatinizer

  attr_accessor :words

  def piglatinize(word)
    vowels = "aeiou"

    if vowels.include?(word[0].downcase)
      word + "way"
    else      
      first_vowel = word.split("").index {|x| vowels.include?(x)}
      
      word[first_vowel...word.length] + word[0...first_vowel] + "ay"
    end

  end

  def to_pig_latin(sentence)
    sentence.gsub(/[^a-z0-9\s]/i, '').split.map do |word|
      piglatinize(word)
    end.join(" ") 
  end

end