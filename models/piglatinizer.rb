require 'pry'

class PigLatinizer
  attr_accessor :string

  def initialize
    @string = string
  end

# here, can have 3 conditionals that test for: vowel first letter,
# consonant first letter, and consonant-cluster.
# pork, orkpay

  def piglatinize(string)
# if the first letter is a vowel, just add "way" to the end
    # binding.pry
    # string = string.downcase
     if string.split(" ").count > 1
       x = to_pig_latin(string)
     elsif string.start_with?('a','e','i','o','u','A','E','I','O','U')
       string << 'way'

     elsif !string[0].start_with?('a','e','i','o','u','A','E','I','O','U') && !string[1].start_with?('a','e','i','o','u','A','E','I','O','U') && !string[2].start_with?('a','e','i','o','u','A','E','I','O','U')
       # binding.pry
       x = string.slice!(0..2)
       # string[0] = ""
       # string[0] = ""
       string << x + "ay"
       # string

    elsif !string[0].start_with?('a','e','i','o','u','A','E','I','O','U') && !string[1].start_with?('a','e','i','o','u','A','E','I','O','U')
      # binding.pry
      x = string.slice!(0..1)
      # string[0] = ""
      # string[0] = ""
      string << x + "ay"
      # string

    elsif !string[0].start_with?('a','e','i','o','u','A','E','I','O','U')
      # binding.pry
      x = string.slice!(0)
      string << x + "ay"


    end
  end

  def to_pig_latin(words)
    # binding.pry
    x = words.split(" ")
    # binding.pry
    x = x.each do |word|
      piglatinize(word)
  end
  x.join(" ")
end



end
