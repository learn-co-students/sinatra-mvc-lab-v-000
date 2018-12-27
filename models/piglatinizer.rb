class PigLatinizer
  
  # the main method
  def piglatinize(input)
    # commented out code works, but 1 line makes it look neater
    # if single_word?(input)
    #   latinized = piglatinize_word(input)
    # else
    #   latinized = multiple_words(input)
    # end
    latinized = single_word?(input) ? piglatinize_word(input) : multiple_words(input)
    
    latinized # return this value
  end
  
  def single_word?(string)
    # divide string into multiple words using " " as the delimiter
    # will only get 1 word or sub string if there isn't any " "
    # actually .split doesn't need " ", but it could be wiser to use it
    string.split(" ").length == 1 ? true : false
  end
  
  def multiple_words(words)
    # commented out code works, but 1 line makes it neater
    # split words and get an array
    # words = words.split(" ")
    # use piglatinize_word on each word
    # words = words.map { |word| piglatinize_word(word) }
    # join them and put back the single spaces
    # words.join(" ")
    words.split.collect { |word| piglatinize_word(word) }.join(" ")
  end
  
  # kinda the main method too
  def piglatinize_word(word)
    # vowel at the start
    # 3 consonants
    # 2 consonants
    # 1 consonant
    # count consonants
    count = 0
    # check if word starts with a vowel
    if !consonant?(word[0])
      word += "w"
    else
      count += 1
    end
  
    # check if word starts with 3 consonants
    if count == 1 && consonant?(word[1]) && consonant?(word[2])
      count += 2
      word = word.slice(3..-1) + word.slice(0,3)
    # check if word starts with 2 consonants if it isn't 3
    elsif count == 1 && consonant?(word[1])
      word = word.slice(2..-1) + word.slice(0,2)
    # check if word starts with 1 consonant if it isn't 3 or 2
    elsif count == 1  
      word = word.slice(1..-1) + word.slice(0)
    end

    # finally add the "ay" using += or <<
    word+= "ay"
  end

  def consonant?(letter)
    #  # could have used actual consonants but there are a lot more of those than vowels
    !letter.match(/[AaEeIiOoUu]/)
  end
  
end