class PigLatinizer

  def piglatinize(words)
    chars = words.downcase.split("") #pig => [p i g]
    aux = ""
    chars.each do |char|
      if ['a', 'e', 'i', 'o', 'u'].include?(char)
        break
      else
        aux = aux + char #=> "" + p
      end
    end

    if aux.length == 0
      words = words + "way"
    else
      words.sub!(aux, "") + aux + 'ay'
    end
  end


  def to_pig_latin(sentence)
    sentence = sentence.split(" ")
    sentence = sentence.map do |words|
      piglatinize(words)
    end
    sentence.join(" ")
  end
end

=begin
  def piglatinize(words)

  # We need to analyse the words character by character
  chars = words.split("")

  # We need an auxiliary variable to store consonants at the beginning.
  aux = ''

  # Iterating through each character in our word to figure out
  # how many consonants are at the beginning of the word.
  chars.each do |char|
    unless ['a', 'e', 'i', 'o', 'u'].include?(char.downcase)
      aux = aux + char
    else
      break
    end
  end

  # We are removing our auxiliary variable from the beginning of
  # the word, then adding it to the end and finally
  # adding "ay" or "way" depending on the length of the auxiliary var.
  words = words.sub!(aux, '') + aux + (aux.length == 0 ? "way" : "ay")
end
#Characters = If the word begins with a consonant omit the first letter and go to the second letter
#If the second is a vowel, keep the rest of the word, add the consonant and add on ay
#If the word begins with a vowel.
#Keep the word and add on way
=end
