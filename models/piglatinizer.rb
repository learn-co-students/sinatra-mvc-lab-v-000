class PigLatinizer
  attr_accessor :text
  def initialize

  end

  def to_pig_latin(text)
    @final_text = []
    text.split(" ").each {|e|
      @final_text << self.piglatinize(e)
    }
    @final_text.join(" ")
  end

  def piglatinize(word)
    if word[0].scan(/[aeouiAEIOU]/).count > 0
      word.concat("way")
    else
      first_consonants = word.match(/^[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]+/)[0]
      word.slice!(first_consonants.size,word.size-1).concat(first_consonants+"ay")
    end
  end

end
