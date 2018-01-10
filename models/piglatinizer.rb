class PigLatinizer

  def to_pig_latin(sentence)
    new_text = sentence.split(" ").map do |word|
      piglatinize(word)
    end
    new_text.join(" ")
  end

  def piglatinize(word)
    vowels = ['a','e','i','o','u','A','E','I','O','U']
    if vowels.include?(word[0])
        word << 'way'
    else
      new_word = []
      a = word.split(/([aeiouAEIOU].*)/)
      new_word << a[1] + a[0] + 'ay'
      new_word.first
    end
  end
end
