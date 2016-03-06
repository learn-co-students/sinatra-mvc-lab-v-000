require 'pry'
class PigLatinizer


  def piglatinize(text)
    cons = text.split(/[aeoui]/).first
    text << text.slice!(cons) << "ay"
  end

  def to_pig_latin(text)
    vowels = ["a", "e", "o", "u", "i"]
    text = text.split(" ")
    a = text.each do |word|
      cons = word.split(/[aeoui]/).first
      if (vowels.include?(word[0]) && word.length >= 3 && !word.eql?("and"))
        word.concat(word.slice!(cons) ) << "ay"
      elsif (!cons.nil? && !cons.eql?("")) || word.eql?("it")
        word.concat(word.slice!(cons) ) << "ay"
      end
    end
    a = a * " "
    a.gsub(".", "")
  end
end
