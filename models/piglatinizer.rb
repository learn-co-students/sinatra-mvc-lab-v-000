class PigLatinizer
  attr_accessor :string

  def initialize(string)
    @string = string
  end

  def piglatinize(word)
    word_arr = word.split('')
    size = word.size
    vowels = ['a','e','i','o','u']
    i = word_arr.index{|c| vowels.include?(c)}

    word[i,size]+word[0,i]+"ay"
  end

  def to_pig_latin
    @string.split(" ").collect do |word|
      piglatinize(word)
    end.join(' ')
  end
end
