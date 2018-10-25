class PigLatinizer

  attr_reader :text

  Vowels = ['a', 'e', 'i', 'o', 'u', 'A','E', 'I', 'O', 'U']

  def piglatinize(sentence)
    words = sentence.split
    words.collect {|w| pigelate(w)}.join(' ')
  end

private

  ##
  # This is a rather direct implementation of the rules of piglatin described
  # here: https://en.wikipedia.org/wiki/Pig_Latin See "Rules" section
  def pigelate(word)
    if Vowels.include?(word[0]) #vowel_start?(word)
      word + "way" #process_vowel_start(word)
    elsif !Vowels.include?(word[0])# consonant_or_cluster_start?(word)
      cluster = leading_consonants(word)
      word = word[cluster.length..word.length]
      word + cluster + "ay"
    end
  end

  def leading_consonants(str)
    str[/\A[bcdfghjklmnpqrstvwxyz]*/i]
  end

end
