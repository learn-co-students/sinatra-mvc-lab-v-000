class PigLatinizer
  attr_accessor :string

  def to_pig_latin(string)
    words = string.split(" ").collect do |word|
      if word[0].match(/^[aeiou]/i) #^ first instance i ignore case
         word += "way"
      else
        shift = word.split(/[aeiou]/).first
        word[(shift.length)..-1] + shift + "ay" #word[x..-1] returns word minus first x letters
      end
    end
    words.join(" ")
  end
end
