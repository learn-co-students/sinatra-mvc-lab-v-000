class PigLatinizer

  def vowel?(str)
  ["a","e","i","o","u"].include?(str)
  end

  def non_pig_latin_words?(word)
    ["i", "me", "to", "too", "a", "an", "in", "and", "on"].include?(word)
  end

def piglatinize(word)
  if non_pig_latin_words?(word)
    word
  elsif vowel?(word[0])
    word << "ay"
    
  else
  first_vowel_index = word.chars.find_index{|c| vowel?(c)}
  consonants = word[0..first_vowel_index-1]
  rest_of_the_word = word[first_vowel_index..-1]
  rest_of_the_word + consonants + 'ay'
end
end

def to_pig_latin(sentence)
  words = sentence.split(/\W+/)
  words.map{|w|  piglatinize(w) }.join(" ")
end

end