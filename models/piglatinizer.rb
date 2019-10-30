class PigLatinizer
  VOWELS = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O' ,'U']

  def firstVowel(word)
    word.split(//).index{|letter| VOWELS.include?(letter)}
  end

  def piglatinize(words)

    splitPhrase = words.split

    ary = []
    splitPhrase.each do |word|
      if firstVowel(word) == 0
        ary << "#{word}way"
      else
        wordAry = word.split(//)
        wordAry << wordAry.shift(firstVowel(word))
        ary << "#{wordAry.join}ay"
      end
    end

    ary.join(' ')
  end

  def to_pig_latin(words)
    piglatinize(words)
  end

end
