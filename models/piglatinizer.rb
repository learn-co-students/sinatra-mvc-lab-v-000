class PigLatinizer
  def piglatinize(word)
    # consonant = word.match(/(\A[^AEIOUaeiou])/).captures
    consonant = /\A[^AEIOUaeiou]+/.match(word)
    # consonant[0]

    # remainder = word.match(/([AEIOUaeiou]+\w+)/)
    remainder = /[AEIOUaeiou]+\w+/.match(word)
    # remainder[0]
    
    vowel = /\A[AEIOUaeiou]/.match(word)

    whole_word = /\A\w*/.match(word)

    if consonant
      new_word = remainder[0] << consonant[0] << "ay"
    elsif vowel
      new_word = whole_word[0] << "way"
    end
  end
end


# consonant = /(\A[^AEIOUaeiou])/.match(word)
# remainder = /([AEIOUaeiou]+\w+)/.match(word)