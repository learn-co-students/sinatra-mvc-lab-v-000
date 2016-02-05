require 'pry'

class PigLatinizer
   VOWELS = %w[a e i o u]
   EXCEPTIONS = ['an', 'a', 'in', 'i', 'and']


  def piglatinize(word)

    word.gsub!(/\W/, '')
#     binding.pry
    vowel_index = vowel_index(word)
#     binding.pry
    if vowel_index == 0 && !EXCEPTIONS.include?(word)
      word + 'ay'
    elsif vowel_index>=1 && vowel_index<=word.length && !EXCEPTIONS.include?(word)
      word[vowel_index..-1]+word[0..vowel_index-1]+'ay'
    else
      word # return unchanged
    end
  end

  def to_pig_latin(sentence)
    words = sentence.split(' ')
    words.collect! do |word|
      piglatinize(word)
    end
    words.join(' ')
  end

  def vowel_index(word)
    letters=word.split('')
    letters.each_with_index do |letter, index|
      if VOWELS.include?(letter.downcase)
        return index
      end
    end
    return nil
  end
end


# piglatin= PigLatinizer.new
# piglatin.to_pig_latin("baby tuckoo.")

