require 'pry'

class PigLatinizer
  attr_reader :text

  def initialize
    #@text = text
  end

  def piglatinize(text)
    words = text.split
    array=[]
    words.each do |word|
      if word[0].downcase.scan(/[bcdfghjklmnpqrstvwxyz]/) != []
         #puts "first is cons"
         if word[1].scan(/[aeiou]/) != [] #second char is vowel
          firstchars = word.slice(0,1)
          word.slice!(0,1)
          @new_word = word + firstchars + "ay"
         elsif  word[1..2].scan(/[bcdfghjklmnpqrstvwxyz]/).count == 2 #2nd,3rd char is cons
            #puts "2nd and 3rd are cons"
            firstchars = word.slice(0,3)
            word.slice!(0,3)
            @new_word = word + firstchars + "ay"
         else #2nd char is cons
            firstchars = word.slice(0,2)
            word.slice!(0,2)
            @new_word = word + firstchars + "ay"
         end
      else #first char is vowel
          @new_word = word + "way"
      end
      array << @new_word
    end
    array.join(" ")
  end


  def count_of_words
    words = text.split(" ")
    words.count
  end

  def count_of_vowels
    text.scan(/[aeoui]/).count
  end

  def count_of_consonants
    text.scan(/[bcdfghjklmnpqrstvwxyz]/).count
  end

  def most_used_letter
    s1 = text.gsub(/[^a-z]/, '') # gets rid of spaces
    arr = s1.split('')
    arr1 = arr.uniq
    arr2 = {}

    arr1.map do |c|
      arr2[c] =  arr.count(c)
    end

    biggest = { arr2.keys.first => arr2.values.first }

    arr2.each do |key, value|
      if value > biggest.values.first
        biggest = {}
        biggest[key] = value
      end
    end

    biggest
  end
end
