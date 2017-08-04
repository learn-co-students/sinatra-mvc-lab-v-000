class PigLatinizer

  def piglatinize(word)
    first_chunk = ''

    #binding.pry
    while word[0].match(/[aeiouAEIOU]/) == nil
      first_chunk += word[0]
      word[0] = ''
    end
    
    if first_chunk == ''
      word + 'way'
    else
      word + first_chunk + 'ay'
    end
  end

  def to_pig_latin(sentence)
    words = sentence.split(' ')
    words.each_with_index do |word, index|
      words[index] = self.piglatinize(word)
    end
    words.join(' ')
  end
end