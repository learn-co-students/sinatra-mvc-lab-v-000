class PigLatinizer


  def begins_with_consonant?(text)
    first_letter = text[0]
    vowels = ["A","a","e","E","i","I","o","O","u","U"]
    vowels.include?(first_letter)

  end

  def piglatinize(word)
    if !begins_with_consonant?(word)
      word = word + "way"


  end

  def translate(sentence)
  end
