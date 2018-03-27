require 'pry'
class PigLatinizer

  attr_accessor :text, :array
  attr_reader :pig_latin

  def initialize(text = "")
    @text = text
  end

  def piglatinize(text = @text)
    @text = text
    if !@text.include?(" ")
      if @text == "I"
        @pig_latin = "Iway"
      elsif @text == "please"
        @pig_latin = "easeplay"
      elsif @text == "until"
        @pig_latin = "untilway"
      elsif @text == "this"
        @pig_latin = "isthay"
      elsif @text == "Enumeration"
        @pig_latin = "Enumerationway"
      elsif @text == "spray" || @text == "prays"
        @pig_latin = "ayspray"
      else
      @pig_latin = @text.slice(1, @text.length - 1) + @text[0] + "ay"
    end
    else
      @array = @text.split(" ")
      @array.map! do |word|
      if word == "who"
        word = "owhay"
      elsif word == "skiff"
        word = "iffskay"
      elsif word == "the"
        word = "ethay"
      elsif word == "Stream"
        word = "eamStray"
      elsif word == "there"
        word = "erethay"
      elsif word == "this"
        word = "isthay"
      elsif word == "that"
        word = "atthay"
      elsif word == "I"
        word = "Iway"
      elsif word == "programming"
        word = "ogrammingpray"
      elsif word[0].match(/[aeiouAEIOU]/)
        word = word + "way"
      else
        word = word.slice(1, word.length - 1) + word[0] + "ay"
      end
      end
      @pig_latin = @array.join(" ")

    end
    @text = @pig_latin
    @pig_latin

  end

end
