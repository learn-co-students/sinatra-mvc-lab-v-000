class PigLatinizer

  def initialize

  end

  def piglatinize(words)
    word_array = words.split(" ")
    return_string = ""
    word_array.each do |word|
      if word.match(/\A+[AEIOU]/i) != nil
        return_string << word.strip + "way" + " "
      else
        consonants = word.scan(/\A+[^AEIOU]+/i)
        word = word.gsub(consonants.join, '') + consonants.join + 'ay'
        return_string << word.strip+" "
      end
    end
    return_string.strip
  end
end
