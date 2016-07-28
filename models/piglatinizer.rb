# Pig Latinizer Class
class PigLatinizer
  def piglatinize(word)
    vowels = %w(a e i o u)
    # Take everything up to the first vowel in a word and move it to the end
    # unless said word starts with a vowel then we just add way to the end of it
    # and send it on
    all_letters_in_string = word.split('')
    if vowels.include?(all_letters_in_string.first.downcase)
      "#{word}way"
    else
      letters_to_move = []
      until vowels.include?(all_letters_in_string.first.downcase)
        letters_to_move << all_letters_in_string.shift
      end

      all_letters_in_string += letters_to_move
      "#{all_letters_in_string.join('')}ay"
    end
  end

  def to_pig_latin(phrase)
    words = phrase.split(' ')

    words.map! { |word| piglatinize(word) }

    words.join(' ')
  end
end
