class PigLatinizer

  def piglatinize(text)
    vowels = ["a", "e", "i", "o", "u"]
    @text = text.downcase

    if vowels.include? text[0].downcase
      text << "way"
    else
      consonants = ""
      while !vowels.include?(text[0])
          consonants << text[0]
          text = text.split("")[1..-1].join
      end
      text + consonants + 'ay'
    end
	end

  def to_pig_latin(string)
    phrase = string.split(" ")
    phrase.collect {|word| self.piglatinize(word)}.join(" ")
  end

end
