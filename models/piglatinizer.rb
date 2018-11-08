class PigLatinizer
  attr_reader :words

  def initialize(words)
    @words = words
  end

  def piglet

  alpha = ('a'..'z').to_a
  vowels = %w[a e i o u]
  consonants = alpha - vowels
  alpha = ('a'..'z').to_a
  vowels = %w[a e i o u]
  consonants = alpha - vowels

  if vowels.include?(words[0])
    words + 'ay'
  elsif consonants.include?(words[0]) && consonants.include?(words[1])
    words[2..-1] + words[0..1] + 'ay'
  else consonants.include?(words[0])
    words[1..-1] + words[0] + 'ay'
  end

      #  words.split(' ').map do |wrd|
      #   if wrd[0].match(/[aeouiAEOUI]/)
      #     wrd << 'way'
      #   elsif wrd == 'please'
      #     wrd[2..-1] + wrd[0..1] + 'ay'
      #   elsif wrd == 'hello'
      #     wrd[1..4] + wrd[0] + 'ay'
      #   elsif %w(a i o u).include? wrd[1]
      #     wrd[1..-1] + wrd[0] + 'ay'
      #   elsif %w(a i o u).include? wrd[2]
      #     wrd[2..-1] + wrd[0] + wrd[1] + 'ay'
      #   else
      #     wrd[wrd.length-2..-1] + wrd[0..-2]+ 'y'
      #
      #   end
      # end.join(' ')
  end

  def piglet_phrase(a)
      a.each do |word|
        word.piglet
      end
  end



end
