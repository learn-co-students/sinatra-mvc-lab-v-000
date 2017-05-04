class PigLatinizer

  def piglatinize(word)
    vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    not_pig_latin = ["i", "a", "is", "to", "too", "an", "in", "and", "on", "I", "A", "Is", "To", "An", "In", "And", "On"]

    if not_pig_latin.include?(word)
      word << "way"
    elsif vowels.include?(word[0])
      word << "way"
    else
      consonant = ""
      counter = 0
      while !vowels.include?(word[counter])
        consonant += word[counter]
        counter += 1
      end
      word = word.split("")[counter..-1].join("")
      word = word + consonant + "ay"
    end
    word
  end

  def to_pig_latin(input)
    results = []
    text_array = input.split(" ")

    text_array.collect do |word|
      results << piglatinize(word)
    end
    results.join(" ")
  end
end
