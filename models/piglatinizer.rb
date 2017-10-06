class PigLatinizer
  attr_reader :phrase

  def piglatinize(word)
    modify_word(word)
  end

  def to_pig_latin(sentence)
    phrase = sentence.split(" ")
    return_phrase = []

    phrase.each do |word|
      updated_word = modify_word(word)
      return_phrase << updated_word
    end

    return_phrase.join(' ')
  end


  def modify_word(word)

    vowels = ['a','e','i','o','u','A','E','I','O','U']

    if vowels.include?(word[0])
      word += 'way'
    else
      vowel_index = word.split('').index{|letter| vowels.include?(letter)}
      word = word.split('')
      vowel_index.times {|i| word = word.rotate}
      word = word.join('') + "ay"
    end

  end

end
