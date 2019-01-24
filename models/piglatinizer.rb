require 'pry'

class PigLatinizer
  attr_accessor :string

  def initialize
    @string = string
  end


  def piglatinize(string)
    @string = string
    words = @string.split(' ')
    #reminder that .map! is how you permanantly change something while iterating
    words.each do |word|
      #.split('') is how you split words
      #! bang is how you make map permanant
      #if pry is showing this : press q
      word = word.split('')
      consonant_count = 0
      if word.first.upcase == 'A' || word.first.upcase == 'E' || word.first.upcase == 'I' || word.first.upcase == 'O'|| word.first.upcase ==  'U' || word.first.upcase ==  'Y'
        word << 'way'
        word = word.join('')
        words << word
        words.shift
        break
      elsif word.first.upcase == 'B' || word.first.upcase == 'C' || word.first.upcase == 'D'|| word.first.upcase ==  'F'|| word.first.upcase == 'G'|| word.first.upcase ==  'H' || word.first.upcase == 'J' || word.first.upcase == 'K' || word.first.upcase == 'L' || word.first.upcase == 'M' || word.first.upcase == 'N' || word.first.upcase == 'P' || word.first.upcase == 'Q' || word.first.upcase == 'R' || word.first.upcase == 'S' || word.first.upcase == 'T' || word.first.upcase == 'V' || word.first.upcase == 'X' || word.first.upcase == 'Z'
        word.each do |letter|
          if letter.upcase == 'B' || letter.upcase == 'C' || letter.upcase == 'D'|| letter.upcase ==  'F'|| letter.upcase == 'G'|| letter.upcase ==  'H' || letter.upcase == 'J' || letter.upcase == 'K' || letter.upcase == 'L' || letter.upcase == 'M' || letter.upcase == 'N' || letter.upcase == 'P' || letter.upcase == 'Q' || letter.upcase == 'R' || letter.upcase == 'S' || letter.upcase == 'T' || letter.upcase == 'V' || letter.upcase == 'X' || letter.upcase == 'Z'
            word.push(letter)
            word.shift
          else
            break
          end
          break
        end
        word << 'ay'
        word = word.join('')
        words << word
        words.shift
        break
      else
        break
      end
      word << 'ay'
      word = word.join('')
      words << word
      words.shift
      break
    end
    words = words.join(' ')
    @string = words
    @string
  end
end
