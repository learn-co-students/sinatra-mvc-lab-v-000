class PigLatinizer

  def piglatinize(word)

    non_pig_latin_words = ["i", "me", "to", "too", "a", "an", "in", "and", "on"]
    vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]

    if non_pig_latin_words.include?(word)
      word
    elsif vowels.include? word[0]
      word << "way"
    else
      while !vowels.include?(word[0])
        letters = word.split("")
        beginning = Array.new





        letters.each {|l| beginning << l until vowels.include?(l)}
        beginning.join("")
        letters.join("")

        "#{letters}#{beginning}ay"
      end
    end
  end


  def to_pig_latin(string)
    string.split.collect{|word| piglatinize(word)}.join(" ")
  end

end

binding.pry
