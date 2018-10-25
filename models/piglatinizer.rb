class PigLatinizer

  attr_reader :text

  Vowels = ['a', 'e', 'i', 'o', 'u', 'A','E', 'I', 'O', 'U']

  def piglatinize(sentence)
    words = sentence.split
    words.collect {|w| pigelate(w)}.join(' ')
  end

private

  def pigelate(word)
#    if consonant_start?(word)
#      process_constant_start(word)
#    els
    if vowel_start?(word)
      process_vowel_start(word)
    elsif cluster_start?(word)
      process_cluster_start(word)
    end
  end

#  def consonant_start?(word)
#    !Vowels.include?(word[0]) && Vowels.include?(word[1])
#  end

#  def process_constant_start(word)
#    starting_consonant = word[0]
#    word[0] = "" #remove firstchar
#    word + starting_consonant + "ay"
#  end

  def vowel_start?(word)
    Vowels.include?(word[0])
  end

  def process_vowel_start(word)
    word + "way"
  end

  def cluster_start?(word)
    !Vowels.include?(word[0])
    #&& !Vowels.include?(word[1])
  end

  #Need to strip all consonants and paste to end
  def process_cluster_start(word)
    cluster = leading_consonants(word)
    word = word[cluster.length..word.length]
    word + cluster + "ay"
  end

  def leading_consonants(str)
    str[/\A[bcdfghjklmnpqrstvwxyz]*/i]
  end

end
