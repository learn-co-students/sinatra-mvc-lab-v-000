
class PigLatinizer 
  
  def initialize
  end 
  
  def piglatinize(words)
    arr = words.split(" ")
    new_arr = []
    arr.each do |word|
      if word.scan(/^([^aeiouAEIOU]*(qu)*)/)[0][0] != "" 
        consonant = word.scan(/^([^aeiouAEIOU]*(qu)*)/)[0][0]
        word = word.gsub(/^([^aeiouAEIOU]*(qu)*)/, "") + consonant + "ay"
        new_arr << word 
      elsif word.scan(/^([^aeiouAEIOU]*(qu)*)/)[0][0] == ""
        word = word + "way"
        new_arr << word 
      else 
        "didn't work"
      end 
    end
    new_arr.join(" ")
  end 
end 