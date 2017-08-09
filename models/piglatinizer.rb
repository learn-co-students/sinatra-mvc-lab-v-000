class PigLatinizer
  attr_accessor :text

    def to_pig_latin(text)
      array = text.split
      piglatinized_array = []
      array.each do |word|
         piglatinized_array << self.piglatinize(word)
    end
       string = piglatinized_array.join(" ")
   end

   def piglatinize(word)
      c = word.match(/(\w*?)([AEIOUaeiou]\w*)/)
      if c[1] == ""
         string = c[2] + "way"
    else
         string = c[2] + c[1] + "ay"
    end
     string
   end
end
