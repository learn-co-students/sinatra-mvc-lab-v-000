class PigLatinizer
  attr_reader :words

  def initialize(words)
    @words = words
  end

  def piglatinize
    words_array = words.split(" ")

    words_array.collect do |word|
      if word.scan(/\A[^aeiouAEIOU]+/).size != 0
        consonants = word.scan(/\A[^aeiou]+/)
        letters = consonants.first
        size = letters.length

        "#{word[size..-1]}#{letters}ay"
      else
        "#{word}way"
      end
    end.join(" ")
  end
end
