class PigLatinizer
  attr_accessor :text

  def piglatinize(word)
    self.to_pig_latin(word)
  end

  def to_pig_latin(text)
    @new_phrase = []
    words = text.split(" ")

    words.each do |word|

    if word[0,1].downcase.scan(/[bcdfghjklmnpqrstvwxyz]/).empty?
         @new_phrase << word + "way" + " "
    end

    if word[0,1].downcase.scan(/[bcdfghjklmnpqrstvwxyz]/).empty? == false
         new_word = word
      until new_word[0,1].downcase.scan(/[bcdfghjklmnpqrstvwxyz]/).empty?
            split_up_word = new_word.split("")
            con = split_up_word.shift()
            split_up_word << con
            new_word = split_up_word.join
       end
            @new_phrase << new_word + "ay" + " "
     end

     end

     @new_phrase = @new_phrase.join.split("")
     @new_phrase.pop
     @new_phrase.join
  end


end
