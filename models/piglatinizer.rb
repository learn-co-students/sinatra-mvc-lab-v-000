class PigLatinizer
  attr_accessor :text
  def piglatinize(text)
    letters = ('a'..'z').to_a
    vowels = %w[a e i o u]
    consonants = letters - vowels
    str2 = text.gsub(/\w+/) do|word|
        if vowels.include?(word.downcase[0])
          word+'way'
        elsif (word.include? 'qu')
          idx = word.index(/[aeio]/)
          word = word[idx, word.length-idx] + word[0,idx]+ 'ay'
        else
          idx = word.index(/[aeiou]/)
          word = word[idx, word.length-idx] + word[0,idx]+'ay'
        end
      end
    end
end
