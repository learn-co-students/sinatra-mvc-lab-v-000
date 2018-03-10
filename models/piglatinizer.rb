class PigLatinizer
  def piglatinize(word)
    vowels = %w[a e i o u A E I O U]

    if vowels.include? word[0]
      word << "way"
    else
      consonants = ""
      while !vowels.include?(word[0])
        consonants << word[0]
        word = word.split("")[1..-1].join('')
      end
      word + consonants + 'ay'
    end
  end

  def to_pig_latin(phrase)
    phrase.split.collect{|word| piglatinize(word)}.join(" ")
  end

end
