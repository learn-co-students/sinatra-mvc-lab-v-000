class PigLatinizer

  def piglatinize(word)
    pl_word = word.downcase
      if pl_word[0] =~ /\A[aeoui]/
        word.insert(-1, 'way')
      elsif pl_word[0] =~ /\A[bcdfghjklmnpqrstvwxyz]/
        this_word = []
        new_word = word.split(/([aeoui].*)/)
        this_word << new_word[1]
        this_word << new_word[0]
        this_word.join
        this_word.insert(-1, 'ay')
        this_word.join
      end
  end

  def to_pig_latin(phrase)
    pl_phrase = []
    phrase.split.each {|word| pl_phrase << piglatinize(word)}
    pl_phrase.join(" ")
  end
end
