class PigLatinizer #come back and clean code up later when I can think straight again.
  attr_accessor :string
 #Everything was controlled and dictated by the spec with absolutely no warning. 30 minutes turned into 8 hours.
  # def initialize(string)
  #   @string = string
  # end

  def piginize(string) #twisted into redundant garbage trying to pass spec
    #binding.pry
    words = string.split(" ").map do |word|
      if word.start_with?('a','e','i','o','u','A','E','I','O','U')
         word += "way"
      elsif word[1].scan(/[aeiou]/) != [] #if second letter's a vowel, do this:
        oink = word.split("") #splitting split words into letters
        oink[oink.length-1] = oink.shift #just realized I could do .gsub. lel.
        ((oink.join) + "ay")
      else
        shift = word.split(/[aeiou]/).first
        word = word[(shift.length)..-1] #word[x..-1] returns word minus first x letters
        word + shift + "ay"
      end
    end
    words.join(" ")
  end

  # def ordinary #rendered usedless by spec
  #   oink = word.split("") #splitting split words into letters
  #   oink[oink.length-1] = oink.shift #just realized I could do .gsub. lel.
  #   ((oink.join) + "ay")
  # end
  #
  def to_pig_latin(string) #this needs to be added for no good fucking reason just to conform to spec.
    piginize(string)
  end

end
