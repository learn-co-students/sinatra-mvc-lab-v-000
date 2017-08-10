require 'pry'

class PigLatinizer

    def piglatinize(word)

      vowels = %w{a e i o u}
      for index in 0..word.length - 1
      if vowels.include?(word[index].downcase)
        return word.slice(index, word.length) + word.slice(0,index) + (index == 0 ? "way" : "ay")
      end
    end
  end








  def to_pig_latin(sentence)
  words = sentence.split(" ")
   words.map do |word|
    self.piglatinize(word)
   end.join(" ")
  end
end
