class PigLatinizer
  attr_accessor :words

  def piglatinize(words)
    words.scan(/[a-z]+/i).map do |word|
      if word.slice(0).match(/[aeiou]/i)
        word << "way"
      elsif word.slice(1).match(/[aeiou]/i)
        word << word.slice!(0) + "ay"
      elsif word.slice(2).match(/[aeiou]/i)
        word << word.slice!(0, 2) + "ay"
      else
        word << word.slice!(0, 3) + "ay"
      end
    end.join(" ")
  end

end