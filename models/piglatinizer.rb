class PigLatinizer

  attr_accessor :phrase

  # def initialize(phrase)
  #   @phrase = phrase
  # end
  def initialize
  end

  def to_pig_latin(phrase)
    words = phrase.split(/\W+/)
    pl_words = words.collect {|word|
      piglatinize(word)
    }

    pl_words.join(" ")
  end

  def piglatinize(word)
    vowels = ['a','e','i','o','u','A','E','I','O','U']
    cons = ['b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','y','z',
            'B','C','D','F','G','H','J','K','L','M','N','P','Q','R','S','T','V','W','X','Y','Z']
    pl_word = word
    temp_str = ""

    if cons.include?(pl_word.chr)
      while cons.include?(pl_word.chr)
        temp_str += pl_word.chr
        pl_word = pl_word.slice(1,pl_word.length)
      end
      pl_word + temp_str+ "ay"
    elsif (word =~ /[aeiouAEIOU]/) == 0
      word + "way"
    end
  end
end
