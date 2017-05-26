class PigLatinizer


  def piglatinize(word)
    new_word = ""
    vowel_index = word.downcase.index(/[aeiou]/)
    if vowel_index == 0
       new_word = word + "way"
    else
      new_word = word.slice(vowel_index, word.length-vowel_index) + word.slice(0,vowel_index) + "ay"
    end
  end

  def to_pig_latin(text)
    new_string = []
    text.split(' ').each do|c|
      new_string << piglatinize(c)
    end
    new_string.join(" ")
  end
end
