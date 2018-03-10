class PigLatinizer

  # modifys a single word
  def piglatinize(word)

    vowels = %w(a e i o u)

    all_letters_in_string = word.split('')

    # Starts with Noun
    if vowels.include?(all_letters_in_string.first.downcase)
      "#{word}way"

    # Starts with a Vowel
    else
      letters_to_move = []

      # collections all starting vowels
      until vowels.include?(all_letters_in_string.first.downcase)
        letters_to_move << all_letters_in_string.shift
      end

      # adds vowels to end of string
      all_letters_in_string += letters_to_move

      # adds studip "ay" to end of string
      "#{all_letters_in_string.join('')}ay"
    end
  end

  # Handles multiple words
  def to_pig_latin(phrase)

    #splits phrase into array of words
    words = phrase.split(' ')

    # handles each word in a phrase
    words.map! { |word| piglatinize(word) }

    #joins words back into phrase
    words.join(' ')
  end

end
