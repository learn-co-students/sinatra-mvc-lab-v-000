class PigLatinizer
  attr_reader :string

  def initialize(string)
    @string = string.downcase.split
  end


  def to_pig_latin
    string.collect do |word|
      if word(/^[^aeiou]/)
         word_array = word.split(" ")
         first_letter = word_array.shift()
         word_array.push(first_letter).join

  end


end
