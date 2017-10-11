class PigLatinizer
  def initialize
    @vowels = %w(a e i o u A E I O U)
  end

  def to_pig_latin(phrase)
    phrase.split.map { |word| piglatinize(word) }.join(" ")
  end

  def piglatinize(word)
    if @vowels.include?(word[0])
      "#{word}way"
    else
      letters = word.chars
      while !@vowels.include?(letters.first)
        consonant = letters.shift
        letters = letters << consonant
      end
      "#{letters.join}ay"
    end
  end

end