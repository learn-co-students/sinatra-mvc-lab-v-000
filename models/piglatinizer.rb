class PigLatinizer

  attr_accessor :word

  def initialize
    @word = word
  end

  def piglatinize(str)
    # Vowels to consider
    vowels = ["a", "e", "i", "o", "u"]
    # Special cases to consider
    two_letter_consonants = ["ch", "sh", "qu", "th", "br"]
    three_letter_consonants = ["thr", "sch", "squ"]
    # Seperate each word from the phrase given
    words = str.split(" ")
    #Location for processed words
    result = [];
    words.each do |word|
        # Words that start with a vowels
        if vowels.include? word[0]
            result.push word << 'way'
        # Words that start with a consonant
        else
            # Check for special consonants
            if three_letter_consonants.include? word[0] + word[1] + word[2]
                # Slice off first three letters
                first_three_letters = word.slice!(0,3)
                # Add letters to end of word with 'ay'
                result.push word << first_three_letters << 'ay'
            elsif  two_letter_consonants.include? word[0] + word[1]
                # Slice off first two letters
                first_two_letters = word.slice!(0,2)
                # Add the letters to end of word with 'ay'
                result.push word << first_two_letters << 'ay'
            else
                # Slice off first letter...
                first_letter = word.slice!(0)
                # Add first letter to end of word with 'ay'
                result.push word << first_letter << 'ay'
            end #End of special consonant check
        end #End of vowel check
    end #End of words.each
    #Present the processed words as a single string
    return result.join(" ")
  end #End of translate function

end
