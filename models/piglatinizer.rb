require 'pry'

class PigLatinizer

  def piglatinize(word)

    # Create vowel bank
    vowels = "AEIOUaeiou"

    # Check to see if 1st letter is a vowel, if so, add 'way' to end
    # MUST explicit return early, or final result has 'ay' instead of 'way'
    return "#{word}way" if vowels.include?(word[0])

    # Split the word into array, no argument for split creates a hang in testing
    word = word.split("")

    # While a consonant...this checks every 1st letter...
    while !vowels.include?(word[0])

      ### BEGIN RUBY BLACK MAGIC ###
      # Keep rotating the 1st word of the array to the end until a vowel
      word = word.rotate
      # Once it sees a vowel, exit the loop with word having vowel at word[0]
      ### END RUBY BLACK MAGIC ###

      ### Another way ###
      # Shift the 1st letter out of the word array...
      # letter = word.shift
      # ...Move it to the end of the array...loop continues until vowel exists in 0th index
      # word = word << letter

      end

      # Join the word array, append 'ay'
      "#{word.join}ay"
  end

  def to_pig_latin(input)
    # Split the sentence, Return the piglatinized word, Join back as sentence
    input.split.map { |word| piglatinize(word) }.join(" ")
  end
end
