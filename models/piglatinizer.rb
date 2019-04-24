class PigLatinizer

def piglatinize(str)
  if str.split.size == 1
    piglatinize_word(str)
  else
    piglatinize_sentence(str)
  end
end

def piglatinize_word(word)
  alphabet = ('a'..'z').to_a
  vowel = ["a", "e", "i", "o", "u"]
  consonants = alphabet - vowel

  if consonants.include?(word[0].downcase) && consonants.include?(word[1]) && consonants.include?(word[2])
    word[3..-1] + word[0..2] + "ay"

  elsif consonants.include?(word[0].downcase) && consonants.include?(word[1])
    word[2..-1] + word[0..1] + "ay"

  elsif consonants.include?(word[0].downcase)
    word[1..-1] + word[0] + "ay"


  elsif vowel.include?(word[0].downcase)
    word + "way"
  #  word[1..-1] + word[0]+"ay"
  end
end

def piglatinize_sentence(sentence)
  split_sentence = sentence.split(" ")
  split_sentence.map {|word| piglatinize_word(word)}.join(" ")
end
end
