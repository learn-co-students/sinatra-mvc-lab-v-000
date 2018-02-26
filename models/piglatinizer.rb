class PigLatinizer
  def piglatinize(word)
    if begins_with_vowel_sounds?(word)
      word+="way"
    else #begins with consonant
      begining = word.scan(/\A[^aeiou]*/).first
      other = begining+"ay"
      new_word = word.slice(begining.size,word.length)
      new_word+=other
    end

  end

  def to_pig_latin(sentence)
    words = sentence.split(" ")
    # sentence = words.reduce("") do |latinized_sentence, word|
    #   latinized_word = piglatinize(word)
    #   latinized_sentence + " #{latinized_word}"
    #
    # end
    latinized_sentence = []
    words.each do |word|
      latinized_sentence << piglatinize(word)
    end
    latinized_sentence.join(" ")

  end

  def begins_with_vowel_sounds?(word)
    word.match(/\A[aeiouAEIOU]/) ? true : false
  end
end
