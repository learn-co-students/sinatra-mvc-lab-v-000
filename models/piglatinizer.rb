class PigLatinizer

  def piglatinize(word)
    vowels = ["a", "e", "i", "o", "u"]
    letters = word.split("")
    vowel_reached = 0
    last = []
    first = []
    letters.each do |letter|
      if vowel_reached == 1
        first << letter
      elsif !vowels.include?(letter.downcase) #if letter is consonant
        last << letter
      elsif vowel_reached == 0
        vowel_reached = 1
        first << letter
      end
    end
    new_letters = first + last
    new_letters = new_letters.compact
    if vowels.include?(letters[0].downcase)
      new_letters.join("") + "way"
    else
      new_letters.join("") + "ay"
    end
  end

  def to_pig_latin(text)
    vowels = ["a", "e", "i", "o", "u"]
    wordarray = text.split
    wordarray.map! do |element|
      piglatinize(element)
    end
    wordarray.join(" ")
  end

end
