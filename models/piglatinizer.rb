class PigLatinizer
  attr_accessor :text, :arr

  def initialize
  end

  def piglatinize(text)
    @arr = text.split(' ')

    @arr.collect do |word|
      if word[0].match(/[aeiouAEIOU]/)
        word << "way"
      else
        sub_arr = word.split(/(\b[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]+)/) - [""]
        sub_arr.reverse.join << "ay"
      end
    end.join(" ")

  end

end
