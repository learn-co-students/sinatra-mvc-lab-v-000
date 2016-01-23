require 'pry'
class PigLatinizer
  
  attr_accessor :phrase
  def piglatinize(word)
    part1=[]
    part2=[]
    vowel = ["a","e","i","o","u"]
    letter = word.to_s.split(//)
    val = letter.find_index{|s| vowel.include?(s)}
    letter.each_with_index{|v, i| (i >= val) ? part1 << v : part2 << v }
    piglatin_word = (part1+part2).join+"ay"
    return piglatin_word
  end
  
  def to_pig_latin(phrase)
    @phrase = phrase
    piglatin = []
    vowel = ["a","e","i","o","u"]
    non_piglatin = ["in","an","on","and","me", "to", "too"]
    phrase_words = self.splits
    phrase_words.each do |pw|
      part1=[]
      part2 = []
      pw.gsub(/./,"")
      split = pw.to_s.split(//)
      if pw.size > 1 && non_piglatin.include?(pw)==false
        val = split.find_index{|s| vowel.include?(s)}
        split.each_with_index{|v, i| (i >= val) ? part1 << v : part2 << v }
        split_word = (part1+part2).join+"ay"
      else
        split_word = pw
      end
      piglatin << split_word
    end
    return piglatin.join(" ")
  end
  
  def splits
    phrase_words = @phrase.to_s.split(" ") 
  end
    #binding.pry
end