class PigLatinizer
<<<<<<< HEAD

  def piglatinize(word)
    if !consonant?(word[0])
      word = word + "w"
    elsif consonant?(word[0]) && consonant?(word[1]) && consonant?(word[2])
      word = word.slice(3..-1) + word.slice(0,3)
    elsif consonant?(word[0]) && consonant?(word[1])
      word = word.slice(2..-1) + word.slice(0,2)
    else
      word = word.slice(1..-1) + word.slice(0)
    end
    word << "ay"
  end

  def consonant?(char)
    !char.match(/[aAeEiIoOuU]/)
  end

  def to_pig_latin(sentence)
    sentence.split.collect { |word| piglatinize(word) }.join(" ")
=======
  attr_accessor

  def initialize()

  end

  def piglatinize(text)
    all_letters = [('a'..'z') || (/[^A-Z]*/)].to_a
    vowels= %w([a e i o u] || [A E I O U])
    consonants = all_letters - vowels

    if vowels.include?(text[0])
      text + 'way'
    elsif consonants.include?(text[0]) &&
          consonants.include?(text[1])
           text[2..-1] + text[0..1] + 'ay'
    elsif text[0..1] == "qu"
         text[2..-1]+"quay"
    elsif text[0..2] == "squ"
          text[3..-1]+"squay"
    else vowels.include?(text[0])
         text[1..-1] + text[0] + 'ay'
    end
  end

  def to_pig_latin(text)
   split_text = text.split(",").to_a
   phrase = piglatinize(split_text)
   new_array = phrase.split(",")
>>>>>>> 6f43316bbbf8b236adc52029454032924a8a0f9c
  end

end
