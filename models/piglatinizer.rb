class PigLatinizer

  def piglatinize(text)
    text.split(" ").map do |word|
      translate(word)
    end.join(" ")
  end

  def translate(word)
    arr = word.split('')
    first_vowel = word.index(/[aeiouAEIOU]/)
    if first_vowel == 0
      new_word = arr.concat(["w","a","y"]).join
    else
      new_word = arr.drop(first_vowel).concat(arr.take(first_vowel)).concat(["a","y"]).join
    end
    new_word
  end

end
