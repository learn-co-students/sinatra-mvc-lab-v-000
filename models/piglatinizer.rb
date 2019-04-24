require 'pry'

class PigLatinizer

  #initialize method isn't needed because attributes aren't required

  def piglatinize(string)
    @string = string
    words = @string.split(' ')
    new_words = []
    #reminder that .map! is how you permanantly change something while iterating
    words.map! do |word|
      #.split('') is how you split words
      #! bang is how you make map permanant
      #if pry is showing this : press q
      word = word.split('')
      if word.first.upcase == 'A' || word.first.upcase == 'E' || word.first.upcase == 'I' || word.first.upcase == 'O'|| word.first.upcase ==  'U' || word.first.upcase ==  'Y'
        word << 'way'
        word = word.join('')
        new_words << word
      elsif word.first.upcase == 'B' || word.first.upcase == 'C' || word.first.upcase == 'D'|| word.first.upcase ==  'F'|| word.first.upcase == 'G'|| word.first.upcase ==  'H' || word.first.upcase == 'J' || word.first.upcase == 'K' || word.first.upcase == 'L' || word.first.upcase == 'M' || word.first.upcase == 'N' || word.first.upcase == 'P' || word.first.upcase == 'Q' || word.first.upcase == 'R' || word.first.upcase == 'S' || word.first.upcase == 'T' || word.first.upcase == 'V' || word.first.upcase == 'W' || word.first.upcase == 'X' || word.first.upcase == 'Z'
          consonant_count = 0
          word.map! do |letter|
            if letter.upcase == 'B' || letter.upcase == 'C' || letter.upcase == 'D'|| letter.upcase ==  'F'|| letter.upcase == 'G'|| letter.upcase ==  'H' || letter.upcase == 'J' || letter.upcase == 'K' || letter.upcase == 'L' || letter.upcase == 'M' || letter.upcase == 'N' || letter.upcase == 'P' || letter.upcase == 'Q' || letter.upcase == 'R' || letter.upcase == 'S' || letter.upcase == 'T' || letter.upcase == 'V' || letter.upcase == 'X' || letter.upcase == 'W'|| letter.upcase == 'Z'
              word.push(letter)
              consonant_count += 1
          #1 hour to find out W WAS MISSING
            else
              break
            end
          end
          word.shift(1*consonant_count)
          word << 'ay'
          word = word.join('')
          new_words << word

      else
      end
      #breaks weren't needed extra ay wasn't needed to be pushed
    end
    new_words = new_words.join(' ')
    @string = new_words
    @string
  end
end
