require 'pry'

class PigLatinizer
  
  attr_accessor :piglatinized_text
  
  @@CONSTANT_2L_CONSONANTS = ['bl', 'br', 'ch', 'cl', 'cr', 'dr', 'fl', 'fr', 'gl', 'gr', 'pl', 'pr', 'sc',
                          'sh', 'sk', 'sl', 'sm', 'sn', 'sp', 'st', 'sw', 'th', 'tr', 'tw', 'wh', 'wr']
  @@CONSTANT_3L_CONSONANTS = ['sch', 'scr', 'shr', 'sph', 'spl', 'spr', 'squ', 'str', 'thr']
  @@CONSTANT_VOWELS = ['a', 'e', 'i', 'o', 'u']
   @@appender = "ay"
   
   def initialize 
     "RETURN"
    end
    
  def piglatinize(text)
    @input_text = text
    new_phrase = []
    words = @input_text.split(" ")
    words.each do |word|
      if @@CONSTANT_VOWELS.include?(word[0].downcase)
        new_phrase << word + 'w' + @@appender
      elsif @@CONSTANT_3L_CONSONANTS.include?(word[0..2].downcase)
        new_phrase << word[3..-1] + word[0..2] + @@appender
      elsif @@CONSTANT_2L_CONSONANTS.include?(word[0..1].downcase)
        new_phrase << word[2..-1] + word[0..1] + @@appender
      else
        new_phrase << word[1..-1] + word[0] + @@appender
      end
    end
     words.size >1 ? new_phrase.join(" ") : new_phrase[0]
   end
 end