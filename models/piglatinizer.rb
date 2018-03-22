
class PigLatinizer

  attr_accessor :word



  def initialize(word)
    @word = word
  end

  def piglatinize(word)

    consonants = ['B','b','C','c','D','d','F','f', 'G','g', 'H','h','J','j','K','k','L','l','M','m', 'N','n','P','p','Q','q','R','r','S','s','T','t','V','v','X','x','Z','z']

    vowels = ['a','A','e','E','i','I','o','O','u','U']

    array = word.split("")
    first_letter = array[0]
    second_letter = array[1]
    third_letter = array[2]

    if first_letter.start_with?(vowels.to_s) && array.length == 1
        array.shift
        new_array = array.push(first_letter)
        new_word = new_array.push("w", "a", "y").join("")
        return new_word
    elsif first_letter.start_with?(consonants.to_s) && second_letter.start_with?(vowels.to_s)
        array.shift
        new_array = array.push(first_letter)
        new_word = new_array.push("a", "y").join("")
        return new_word
    elsif first_letter.start_with?('s','S') && second_letter.start_with?('p','P') && third_letter.start_with?('r','R')
        array.shift
        array.shift
        array.shift
        new_word = array.push("a", "y").join("")
        return new_word
    elsif first_letter.start_with?(vowels.to_s) && second_letter.start_with?(consonants.to_s)
          new_word = array.push("w", "a", "y").join("")
          return new_word
    else first_letter.start_with?(consonants.to_s) && second_letter.start_with?(consonants.to_s)
        first_letter = array[0]
        second_letter = array[1]
        array.shift
        array.shift
        new_array = array.push(first_letter)
        new_array = array.push(second_letter)
        new_word = new_array.push("a", "y").join("")
        return new_word
      end #if statement
  end #method

end
