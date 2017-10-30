class GoatAramaicizer

  def goataramaicize(word)

#   non_pig_latin_words = []
    vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]

#   if non_pig_latin_words.include?(word)
#     word
    if vowels.include? word[0]
      word << "tasah"
    else
      consonants = ""
      while !vowels.include?(word[0])
        consonants << word[0]
        word = word.split("")[1..-1].join
      end
      word + consonants + 'ackh'
    end
  end


  def to_goat_aramaic(string)
    string.split.collect{|word| goataramaicize(word)}.join(" ")
  end

end

p = GoatAramaicizer.new

puts p.goataramaicize("pork")
# binding.pry
