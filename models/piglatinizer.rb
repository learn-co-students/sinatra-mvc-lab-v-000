require 'pry'
class PigLatinizer

  def piglatinize(string)
    vowels = ['a', 'A', 'e', 'E', 'i', 'I', 'o', 'O', 'u', 'U']
    words = string.split(' ')
    @all = []

    words.each do |word|
      if vowels.include? word[0]
        @all << word + 'way'
      else
        consonants = ""
        while !vowels.include?word[0]
          consonants << word[0]
           word = word.split('')[1..-1].join
        end
        @all << word + consonants + 'ay'
      end
    end
    @all.join(' ')
  end #This returns an array of the piglatin words

end
