class PigLatinizer

  def initialize()
  end

  def piglatinize (text)
    words = text.split(' ')
    words = words.map! do | word |
      translate(word)
    end
    words.join(' ')
  end

  def translate (word)
    start_consonants = word.downcase.split(/([aeiou].*)/).first.length
    if start_consonants == 0
      new_word = word.concat("way")
    else
      new_word = word[start_consonants..word.length-1] + word[0,start_consonants] + "ay"
    end
    new_word
  end

end
