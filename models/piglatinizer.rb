class PigLatinizer

  def initialize
  end

  def piglatinize(string)
    words = string.split(" ").collect do |word|
      if word[0].match(/[aeiou]/i)
        word += "way"
      else shift = word.split(/[aeiou]/).first
        word[(shift.length)..-1] + shift + "ay"
      end
    end
    words.join(" ")
  end
end
