class PigLatinizer
  attr_accessor :words

  def initialize
    @words = words
  end

  def piglatinize(words)
    consonant = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
    vowel = ["a", "e", "i", "o", "u"]
    if @words.downcase[0].scan(/[bcdfghjklmnpqrstvwxyz]/)
      #all letters before the initial vowel are placed at the end of the word sequence. Then, "ay"

    elsif @words.downcase.scan(/[bcdfghjklmnpqrstvwxyz]/)
      #words begin with consonant clusters (multiple consonants that form one sound), the whole sound is added to the end when speaking or writing.

    else  @words.downcase.scan(/[aeoui]/)
      #words that begin with vowel sounds, one just adds "way" or "yay" to the end (or just "ay")

    end
  end

  #def count_of_vowels
    #@words.downcase.scan(/[aeoui]/).count
  #end

  #def count_of_consonants
    #@words.downcase.scan(/[bcdfghjklmnpqrstvwxyz]/).count
  #end

def to_pig_latin
    #all_letters_in_string = @text.downcase.gsub(/[^a-z]/, '').split('') #gets rid of spaces and turns it into an array
    #letters_to_compare = all_letters_in_string.uniq
    #most_used_letter = ""
    #letter_count = 0

    #letters_to_compare.map do |letter|
      #letter_repetitions = all_letters_in_string.count(letter)
      #if letter_repetitions > letter_count
        #letter_count = letter_repetitions
        #most_used_letter = letter
      #end
    #end
    #biggest = [most_used_letter, letter_count]
  end

end
