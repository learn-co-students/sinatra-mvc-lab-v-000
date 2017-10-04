class PigLatinizer


  def piglatinize(text)
    vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]

  #1. first letter is consonent, second is vowel > move first 1 add ay
    if (!vowels.include? text[0]) && (vowels.include? text[1])
      first_letter = text[0]
      text[1..-1] + first_letter + "ay"
  #2. first and second letter are consonents > move first 2 add ay
    elsif (!vowels.include? text[0]) && (!vowels.include? text[1])
      first_two_letters = text[0..1]
      text[2..-1] + first_two_letters + "ay"
  #3.first letter is vowel > add way
    elsif vowels.include? text[0]
      text + "way"
    end


  end

  def to_pig_latin(string)
    string.split.collect { |word| piglatinize(word) }.join(" ")

  end

end
