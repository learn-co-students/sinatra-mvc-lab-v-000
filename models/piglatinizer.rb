class PigLatinizer
  def to_pig_latin(user_input)
    user_input.split.collect{|word| piglatinize(word)}.join(" ")
  end

  def piglatinize(word)
     first = word[0] and rest = word.size

     ans = word + "w" if !incl?(first) # if none
     ans = word[1,rest] + first if incl?(first) # if 1
     ans = word[2,rest] + word[0..1] if incl?(word[0,2]) # if 2
     ans = word[3,rest] + word[0..2] if incl?(word[0,3]) # if 3

     ans + "ay"
   end

  def incl?(letters)
    letters.scan(/\w/).all?{ |l| !l.match(/(?i)[aeiou]/) }
  end

end
