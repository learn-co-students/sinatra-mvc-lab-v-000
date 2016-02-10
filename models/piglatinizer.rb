require 'pry'
class PigLatinizer
  attr_accessor :words
  
  def initialize
    @words=words
  end
  
  def piglatinize(word)
      @constants=[]
      if /[aeiou]/.match(word[0].downcase)
        word="#{word}ay"
        return word
      else
        word.split("").each_with_index do |letter,i|
          new_word=word.split("")
          if !/[aeiou]/.match(letter.downcase)
            @constants << letter
          else
            until new_word[0]==letter
              new_word.shift
            end
            @constants=@constants.join
            new_word="#{new_word.join}#{@constants}ay"
            return new_word
            break
          end
        end
      end
  end
  
  def to_pig_latin(words)
    split_words=words.split
    piglatinize_array=[]
    split_words.each do |piece_of_text|
     piece_of_text=piece_of_text.gsub(".","")
     if piece_of_text.length==1
       piglatinize_array << piece_of_text
     elsif piece_of_text == "an" || piece_of_text == "and" || piece_of_text == "in"
       piglatinize_array << piece_of_text
     else
       piglatinize_array << piglatinize(piece_of_text)
     end
    end
    piglatinize_array.join(" ")
  end
  
  
end