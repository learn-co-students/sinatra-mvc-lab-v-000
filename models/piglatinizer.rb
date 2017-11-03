class PigLatinizer

  # def initialize(string)
  #   @string = string.downcase
  # end

  def piglatinize(word)
    array = word.split("")
    if "aeiouAEIOU".include?(array[0])
      word + "way"
    else
      letter = array.shift
      if "aeiouAEIOU".include?(letter)
        array.join + letter + "way"
      else
        array.join + letter + "ay"
      end
    end
  end


end
