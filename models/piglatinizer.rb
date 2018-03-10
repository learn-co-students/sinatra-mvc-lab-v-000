class PigLatinizer
  attr_accessor :text, :words, :pigsty

  @@vowels = ["a", "e", "i", "o", "u"]

  def initialize
    
  end


  def piglatinize(word)#for an individual word

    if @@vowels.include?(word[0].downcase) #ate
      word = word + "way"
      word
    elsif !(@@vowels.include?(word[0].downcase)) && @@vowels.include?(word[1])  #sale
      word = word[1..-1] + word[0] + "ay"
      word
    elsif !(@@vowels.include?(word[0].downcase)) && !(@@vowels.include?(word[1])) && @@vowels.include?(word[2]) #true
      word = word[2..-1] + word[0] + word[1] + "ay"
      word 
    elsif !(@@vowels.include?(word[0].downcase)) && !(@@vowels.include?(word[1])) && !(@@vowels.include?(word[2])) && @@vowels.include?(word[3]) #thro
      word = word[3..-1] + word[0] + word[1] + word[2] + "ay"
      word
    else
      word = word
    end
  word
  end 



  def to_pig_latin(text)# for a phrase
    pigsty = []
    words = text.split(" ")
    words.each do |word|
      if @@vowels.include?(word[0].downcase) #ate
        word = word + "way"
        pigsty << word
      elsif !(@@vowels.include?(word[0].downcase)) && @@vowels.include?(word[1])  #sale
        word = word[1..-1] + word[0] + "ay"
        pigsty << word
      elsif !(@@vowels.include?(word[0].downcase)) && !(@@vowels.include?(word[1])) && @@vowels.include?(word[2]) #tru
        word = word[2..-1] + word[0] + word[1] + "ay"
        pigsty << word 
      elsif !(@@vowels.include?(word[0].downcase)) && !(@@vowels.include?(word[1])) && !(@@vowels.include?(word[2])) && @@vowels.include?(word[3]) #thro
        word = word[3..-1] + word[0] + word[1] + word[2] + "ay"
        pigsty << word
      else
        word = word
        pigsty << word
      end
    end
    pigsty.join(" ") 
  end 

end

