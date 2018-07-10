class PigLatinizer

  def to_pig_latin(sentence)
    @newtext = []
    text = sentence.split(" ")
    text.each do |word|
      piglatinize(word)
      @newtext << @pigtext
    end
    @user_phrase = @newtext.join(" ")
  end

  def piglatinize(text)
    if text[0].match(/\b[aeiouAEIOU]/)
      vowel(text)
    else
      consonant(text)
    end
  end

  def vowel(text)
		# @pigtext = 
		"#{text}way"
    # @pigtext
  end

  def consonant(text)
    if text[1].match(/\b[aeiouAEIOU]/)
      ary = text.split("")
      ary.shift
      ary << text[0]
      ary = ary.join("")
      @pigtext = "#{ary}ay"
      
    elsif text[2].match(/\b[aeiouAEIOU]/)
      ary = text.split("")
      2.times do ary.shift end
      ary << text[0..1]
      ary = ary.join("")
      @pigtext = "#{ary}ay"

    else
			ary = text.split("")
			
binding.pry

      3.times do ary.shift end
      ary << text[0..2]
      ary = ary.join("")
      @pigtext = "#{ary}ay"
    end
    @pigtext
  end
end