class PigLatinizer
  def piglatinize(word)
    vowels = ['a', 'e', 'i','o','u','A', 'E', 'I', 'O', 'U']
    consonants = ""
    if vowels.include? word[0]
      word << "way"
    else
      until vowels.include? word[0]
        consonants << word[0]
        word = word[1..-1]
      end
      word << consonants
      word << 'ay'
    end
  end

  def to_pig_latin(user_phrase)
    user_phrase.split.map{|word| piglatinize(word)}.join(' ')
  end
end
