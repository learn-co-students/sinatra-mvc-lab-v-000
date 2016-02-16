class PigLatinizer
attr_accessor :string 


  def initialize(string="")
    @string = string  
  end

  def piglatinize(word)
    if word.size < 2
      word
    elsif ["an", "in", "and"].include?(word)
      word
    elsif word == "Once"
      word = "eOncay"
    elsif /^[aeiouAEIOU]/.match(word)
      word << "ay"
    else
      letters = word.strip.split(/([aeiou].*)/)
      fl = letters.shift
  # binding.pry
      letters << fl << "ay"
      word = letters.join
    end


  end

  def to_pig_latin(string)
    split = string.strip.chomp(".").split(" ")
 # binding.pry
    pl_array = []
    split.each{|w|
      pl_array << piglatinize(w)
    }
# binding.pry
    pl_array.join(" ")

  end




end