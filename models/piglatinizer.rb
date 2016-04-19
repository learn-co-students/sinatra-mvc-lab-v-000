class PigLatinizer

  attr_accessor :text, :split_text_array
  @split_text_array = []

  def initialize(text = nil)
    @text = text
    @split_text_array = []
  end

  def piglatinize(text)
    #binding.pry
    first_letter = []
    @text = text
    #    binding.pry
    @text.split(" ").each do |word|
      if word.match(/\b[AEIOUaeiou]/)
        @split_text_array << word + "way"
      else
        shifted_letters = []
        drop_point = word.split("").index(word.scan(/[aeiouAEIOU]/).first)
        shifted_letters << word.split("").shift(drop_point).join
        @split_text_array << (word.split("").drop(drop_point).join + shifted_letters[0] + "ay")
      end
    end
    #binding.pry
    @split_text_array.last
  end

  def to_pig_latin(text)
    #binding.pry
    first_letter = []
    @text = text
    #    binding.pry
    @text.split(" ").each do |word|
      if word.match(/\b[AEIOUaeiou]/)
        @split_text_array << word + "way"
      else
        shifted_letters = []
        drop_point = word.split("").index(word.scan(/[aeiouAEIOU]/).first)
        shifted_letters << word.split("").shift(drop_point).join
        @split_text_array << (word.split("").drop(drop_point).join + shifted_letters[0] + "ay")
      end
    end
    @split_text_array.join(" ")
  end
end
#binding.pry
