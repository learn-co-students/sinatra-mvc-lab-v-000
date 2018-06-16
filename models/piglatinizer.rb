class PigLatinizer

  def initialize
  end

  def piglatinize(word)
    splited_words = word.split()
    splited_words.collect {|word|
      if word =~ (/\A[aeiou]/i)
        word + 'way'
      else
        separate = word.split(/([aeiou].*)/)
        head = separate[0]
        tail = separate[1]
        tail + head + 'ay'
      end
    }.join(" ")
  end

end
