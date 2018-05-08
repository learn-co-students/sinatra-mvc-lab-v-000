class PigLatinizer

  def piglatinize(user_phrase)
    @pig_array = []
    split(user_phrase).each do |word|
      pigitize(word)
    end
    @result = @pig_array.join(' ')
  end

  def split(phrase)
    @word_array = phrase.split(' ')
  end

  def pigitize(word)
    if word.match(/\d/) || word.match(/\W/)
      :error
      # raise "You must enter a single word, with no spaces, special characters, or numbers."
    elsif word.match(/^[y]/)
      word = "#{word[1..-1]}yay"
    elsif word.match(/^[aeiouAEIOU]/)
      word = "#{word}way"
    elsif word.match(/^[qu]{2}/)
      start = word.slice!(/^[qu]{2}/)
      word = "#{word}#{start}ay"
    else
      start = word.slice!(/^[^aeiouy]{1,}/)
      word = "#{word}#{start}ay"
    end
   @pig_array << word
  end
end
