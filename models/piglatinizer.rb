class PigLatinizer

  def piglatinize(word)
    lower = ('a'..'z').to_a
    upper = ('A'..'Z').to_a
    alpha = upper + lower
    vowels = ['a', 'e', 'i', 'o', 'u','A', 'E', 'I', 'O', 'U']
    consonants  = alpha - vowels

    word = word.split("")
    new_word = nil
    if consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2])
      word << word[0]
      word << word[1]
      word << word[2]
      word.shift
      word.shift
      word.shift
      new_word = "#{word.join}ay"
    elsif consonants.include?(word[0]) && consonants.include?(word[1])
      word << word[0]
      word << word[1]
      word.shift
      word.shift
      new_word = "#{word.join}ay"
    elsif vowels.include?(word[0])
      new_word = "#{word.join}way"
    elsif consonants.include?(word[0])
        word << word[0]
        word.shift
        new_word = "#{word.join}ay"
    end
  end

  def to_pig_latin(sentence)
    words = sentence.split(" ")
    new_sentence = []
    words.each{|word| new_sentence << piglatinize(word)}
    new_sentence.join(" ")
  end

end
