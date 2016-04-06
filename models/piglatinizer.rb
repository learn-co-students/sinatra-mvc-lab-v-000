class PigLatinizer
  # attr_accessor :string

  
  def piglatinize(word)
    test_word = word.downcase
    if !test_word[0].match(/a|e|i|o|u/).nil?
      word+'way'
    else
      prefix = word[0, %w(a e i o u).map{|vowel| "#{word}aeiou".index(vowel)}.min]
      "#{word[prefix.length..-1]}#{prefix}ay"
    end
  end
  def to_pig_latin(string)
    (string.split.map {|word| piglatinize(word)}).join(" ")
  end
end

