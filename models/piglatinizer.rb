class PigLatinizer

  def piglatinize(phrase)
    #binding.pry
    pig_latin_words = []

    words = phrase.chomp.split(' ')
    words.each do |word|
      parts_of_word = word.split(/([^aeiouAEIOU]*)([aeiouAEIOU]*)(.*)/)
      consonant_cluster = parts_of_word[1]
      rest = parts_of_word[2] + (parts_of_word[3] || "")
      #binding.pry
      if consonant_cluster.length>0
        pig_latin_words << "#{rest}#{consonant_cluster}ay"
      else
        pig_latin_words << "#{rest}way"
      end
    end
    pig_latin_words.join(" ")
  end
end
