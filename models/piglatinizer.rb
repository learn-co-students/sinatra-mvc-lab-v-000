class PigLatinizer
  attr_reader :words

  def initialize(words=nil)
    @words = words
  end

  def piglet

  #alpha = ('a'..'z').to_a
  #vowels = %w[a e i o u]
  consonants = /\A(?=[^aeiou])(?=[a-z])/i
  vowels = %w[a e i o u A E I O U]
 #each word:

  # if vowels.include?(words[0])
  #   words + 'way'
  # elsif consonants.match(words[0]) && consonants.match(words[1]) && consonants.match(words[2])
  #   words[3..-1] + words[0..2] + 'ay'
  # elsif consonants.match(words[0]) && consonants.match(words[1])
  #   words[2..-1] + words[0..1] + 'ay'
  # else consonants.match(words[0])
  #   words[1..-1] + words[0] + 'ay'
  # end

 #everything:
    words.split(' ').map do |wrd|
      if vowels.include?(wrd[0])
        wrd << 'way'
      elsif consonants.match(wrd[0]) && consonants.match(wrd[1]) && consonants.match(wrd[2])
        wrd[3..-1] + wrd[0..2] + 'ay'
      elsif consonants.match(wrd[0]) && consonants.match(wrd[1])
        wrd[2..-1] + wrd[0..1] + 'ay'
      else consonants.match(wrd[0])
        wrd[1..-1] + wrd[0] + 'ay'
      end
    end.join(' ')

  end

  def piglet_phrase(a)
      a.split(' ').each do |word|
        word.piglet
      end.join(' ')
  end



end
