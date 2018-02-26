#================================================================ 
class PigLatinizer
#==========================properties============================ 
  attr_accessor :phrase
#==========================instance============================== 
  def piglatinize(phrase)  
    char = phrase[0] and rest = phrase.size 
     
    ans = phrase + "w" if !con?(char) # if none
    ans = phrase[1,rest] + char if con?(char) # if 1
    ans = phrase[2,rest] + phrase[0..1] if con?(phrase[0,2]) # if 2
    ans = phrase[3,rest] + phrase[0..2] if con?(phrase[0,3]) # if 3 

    ans + "ay"
  end
 #--------------------------------------------------------------- 
  def con?(chars) 
    chars.scan(/\w/).all?{ |l| !l.match(/(?i)[aeiou]/) }
  end
 #---------------------------------------------------------------  
  def to_pig_latin(sentence)
    sentence.split.collect { |word| piglatinize(word) }.join(" ")
  end
#================================================================ 
end

