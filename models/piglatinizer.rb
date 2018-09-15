
class PigLatinizer
  attr_accessor :words


  def piglatinize(string)
    word_array = string.split(" ")
    new_array = word_array.map do |word|
      new_word = piglatinize_word(word)
    end
    new_array.join(" ")
  end

    def piglatinize_word(word)
      array = word.split("")
        if array[0] =~ /[aeiouAEIOU]/
          word + "way"
        else
          first_vowel = array.find_index { |e| e.match( /[aeiouAEIOU]/ ) } #returns the index of the first vowel
          first_chunk = array[0...first_vowel].join("") #This first_chunk will be a consonant cluster
          last_chunk = word.slice(first_vowel..-1)
          last_chunk + first_chunk + "a" + "y"
        end
    end



end #ends the class
