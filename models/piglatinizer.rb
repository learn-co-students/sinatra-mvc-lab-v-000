require 'pry'
class PigLatinizer

  attr_accessor :text, :pig

  def initialize(text = nil)
    if !@text.nil?
      @text = text.split(" ")
    end
    @pig = ""
  end

  def piglatinize(word)
    final_word = ""
    if !word[0].downcase.scan(/[bcdfghjklmnpqrstvwxyz]/).empty?
      word.split('').each do |letter|
        if !letter.downcase.scan(/[aeoui]/).empty?
          idx = word.index(letter)
          final_word << letter + word[idx+1..-1] + word[0..idx-1]  +"ay"
          return final_word
          
        end 
      end
    elsif !word[0].downcase.scan(/[aeoui]/).empty? 
      return final_word << word + "way"
    else 
      final_word << word + "yay"
      return final_word
         
    end
  end

  def to_pig_latin(string_words)
    final_string = ""
    string_words.split(' ').each do |word|
        final_string += " " + piglatinize(word)
    end
    @pig = final_string.strip
         
  end



end