class PigLatinizer

  def piglatinize(word)
    if word[0].match(/a|e|i|o|u|A|E|I|O|U/).nil?
      word_array = word.split /([aeiou].*)/
    	word_array << word_array.shift
      word_array << "ay"
      word = word_array.join("")
    else
      word =  word + "way"
    end
  end

  def to_pig_latin(string)
    string_array = []
    string.split(" ").each do |word|
      string_array << piglatinize(word)
    end
    final_string = string_array.join(" ")
  end

end
