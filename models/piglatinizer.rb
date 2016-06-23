

class PigLatinizer

  def piglatinize(word)
    vowel = word.downcase.index(/[aeiou]/)
    if vowel == 0
      ans = word  + 'way'
    else
      ans = word + word[0..vowel-1] + 'ay'
      ans[0..vowel-1] = ''
    end
    ans
  end

  def to_pig_latin(words)
    words.split(' ').map do |word|
      piglatinize(word)
    end.join(" ")
  end

end