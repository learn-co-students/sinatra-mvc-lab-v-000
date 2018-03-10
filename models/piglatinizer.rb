class PigLatinizer
  attr_accessor :text

  def initialize(text=nil)
    @text = text
  end


  def piglatinize(arg)
    word = arg.split(//)

    ind = arg.index(/[aeiouAEIOU]/)
    if ind == 0
      ary = arg.partition(/[aeiouAEIOU]/)
        ending = ary[0] + "way"
        beginning = ary[1] << ary[2]
        word = beginning + ending
    else 
        word = "herro"
        ary = arg.partition(/[aeiou]/)
        ending = ary[0] + "ay"
        beginning = ary[1] << ary[2]
        word = beginning + ending
      end
    word
  end



  def to_pig_latin(arg)
    words = arg.gsub(/[^a-zA-Z]/, ' ').split(' ') 

    ary = words.map do |word|
      index = word.index(/[aeiouAEIOU]/)
      if index == 0
        word << "way"
      else
        ary = word.partition(/[aeiou]/)
        ending = ary[0] + "ay"
        beginning = ary[1] << ary[2]
        finalword = beginning + ending
      end
    end
    ary.join(" ")
  end


  def convert
    
    words = @text.gsub(/[^a-zA-Z]/, ' ').split(' ') 

    ary = words.map do |word|
      index = word.index(/[aeiouAEIOU]/)
      if index == 0
        word << "way"
      else
        ary = word.partition(/[aeiou]/)
        ending = ary[0] + "ay"
        beginning = ary[1] << ary[2]
        finalword = beginning + ending 
      end
    end
    ary.join(" ")
  end



end