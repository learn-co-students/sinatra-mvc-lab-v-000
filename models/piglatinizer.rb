class PigLatinizer
  attr_accessor :input

  def initialize(input=nil)
    @input = input
  end

  def piglatinize(manual = nil)
    @input = manual || @input
    if input.split(" ").count > 1
      to_pig_latin
    elsif ["a","e","i","o","u"].include?(@input[0].downcase)
        @input+"way"
    else
        init_cons = @input.scan(/([^aeiou]*)/)[0][0]
        remainder = @input.scan(/[aeiou].*/)[0]
        remainder + init_cons+"ay"
    end
  end

  def to_pig_latin(manual = nil)
    @input = manual || @input
    words = @input.split(" ")
    pig_array = []

    words.each do |word|
      @input = word
      pig_array << piglatinize
    end

    pig_array.join(" ")
  end

end
