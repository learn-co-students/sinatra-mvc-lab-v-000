class PigLatinizer

  def piglatinize(words)
    if words.split(" ").length == 1 #if one word
      if words[0].match(/[aAeEiIoOuU]/) #if starts with vowel
        piglatin = words+"way"
      elsif !words[0].match(/[aAeEiIoOuU]/) && !words[1].match(/[aAeEiIoOuU]/) && !words[2].match(/[aAeEiIoOuU]/) #if starts with 3 consonants
        piglatin = words.slice(3..-1) + words.slice(0,3) + "ay"
      elsif !words[0].match(/[aAeEiIoOuU]/) && !words[1].match(/[aAeEiIoOuU]/) #if starts with 2 consonants
        piglatin = words.slice(2..-1) + words.slice(0,2) + "ay"
      elsif !words[0].match(/[aAeEiIoOuU]/) #if starts with 1 consontant
        piglatin = words.slice(1..-1) + words.slice(0) + "ay"
      end
    else
      sentence = words.split(" ")
      new_sentence = []
      sentence.each do |word|
        if word[0].match(/[aAeEiIoOuU]/) #if starts with vowel
          piglatin = word+"way"
        elsif !word[0].match(/[aAeEiIoOuU]/) && !word[1].match(/[aAeEiIoOuU]/) && !word[2].match(/[aAeEiIoOuU]/) #if starts with 3 consonants
          piglatin = word.slice(3..-1) + word.slice(0,3) + "ay"
        elsif !word[0].match(/[aAeEiIoOuU]/) && !word[1].match(/[aAeEiIoOuU]/) #if starts with 2 consonants
          piglatin = word.slice(2..-1) + word.slice(0,2) + "ay"
        elsif !word[0].match(/[aAeEiIoOuU]/) #if starts with 1 consontant
          piglatin = word.slice(1..-1) + word.slice(0) + "ay"
        end
        new_sentence << piglatin
      end
      new_sentence.join(" ")
    end
  end
end
