require_relative "../config/environment"

class PigLatinizer

  def piglatinize(word)
    array = word.split("")
    res = ""
    
    i = 0
    while array[i].downcase.match(/[bcdfghjklmnpqrstvwxz]/) do
      i += 1
    end

    if i > 0
      array[i..-1].each {|symb| res << symb}
      i.times { |i| res << array[i]}
      res << "ay"
    else
      res = word + "way"
    end
  end

  def to_pig_latin(words)
    words.split(" ").collect {|word| self.piglatinize(word)}.join(" ")
  end
end

# p = PigLatinizer.new
# binding.pry