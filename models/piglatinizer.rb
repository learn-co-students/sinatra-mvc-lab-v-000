class PigLatinizer

  def piglatinize(words)
    arr = words.split(" ")
    arr2 = arr.map do |word|
      pl_word(word)
    end
    arr2.join(" ")
  end

  def pl_word(word)
    l = word.length
    # examine first letter
    if vowel?(word[0])
      word = word + "way"
    else
      # find all letters until vowel
      idx = 0
      until vowel?(word[idx])
        idx += 1
      end
      word = word[idx..-1] + word[0..idx-1] + "ay"
    end
    word
  end

  def vowel?(char)
    "aeouiAEOUI".include?(char)
  end


end
