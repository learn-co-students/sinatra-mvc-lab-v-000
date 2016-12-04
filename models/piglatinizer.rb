class PigLatinizer

  def piglatinize(word)
    if word.downcase.start_with?('a','e','i','o','u')
      word += "way"
    else
      while word.downcase[0].match(/[bcdfghjklmnpqrstvwxyz]/) != nil
        word = word[1..-1] + word[0]
      end

      # NOT FINISHED YET 
      word += "ay"
    end
    word
  end

  def to_pig_latin(text)
    text.split(' ').collect {|word| self.piglatinize(word)}.join(' ')
  end

end