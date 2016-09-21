class PigLatinizer

  def piglatinize(text)
    vowels = ['a','e','i','o','u','A','E','I','O','U']
    if text.start_with?('a','e','i','o','u','A','E','I','O','U')
      text + "way"
    else
      letters = text.split("")
      first = ""
      loop do
        break if vowels.include?(letters[0])
        first << letters.shift
      end
      letters.join + first + "ay"
    end
  end

  def to_pig_latin(text)
    text.split(" ").map{|word| self.piglatinize(word)}.join(' ')
  end

end
