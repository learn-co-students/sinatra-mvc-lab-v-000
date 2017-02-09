class PigLatinizer

  VOWELS = ['a','e','i','o','u','A','E','I','O','U']

  def initialize
  end

  def piglatinize(word)
    output = ""
    vowelFound = false

    if word.start_with?('a','e','i','o','u','A','E','I','O','U')
      output  = word + 'way'
    else
      output = word
      word.each_char do |chr|
        if (!vowelFound && !(VOWELS.include? chr))
          output = output + output.slice!(0)
        else
          vowelFound = true
        end
      end
      output += 'ay'
    end

    output
  end

  def to_pig_latin(words)
    wordArray = words.split
    output = ""
    wordArray.each do |word|
      output += self.piglatinize(word) + " "
    end
    output.chop
  end

end
