class PigLatinizer

  attr_accessor :string

  def piglatinize(word)
# pork, I , hello, please, tomorrow, until. this. enumeration, spray, prays

    non_pig_latin_words = ["i", "me", "to", "too", "a", "an", "in", "and", "on", "I"]
    vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]

    if non_pig_latin_words.include?(word)
      word + "way"
    elsif vowels.include? word[0]
      word << "way"
    else
      consonants = ""
      while !vowels.include?(word[0])
        # binding.pry
        consonants << word[0]
        word = word.split("")[1..-1].join
      end
      word + consonants + 'ay'
    end
  end

  def to_pig_latin(string)
    string.split.collect{|word| piglatinize(word)}.join(" ")
  end

end
