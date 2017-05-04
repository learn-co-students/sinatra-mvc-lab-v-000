class PigLatinizer

  def piglatinize(word)
    starting_blend = word.downcase[/^(sch|scr|shr|sph|spl|spr|squ|str|thr|bl|br|ch|cl|cr|dr|fl|fr|gl|gr|pl|pr|sc|sh|sk|sl|sm|sn|sp|st|sw|th|tr|tw|wh|wr)/]
    if starting_blend
      word[(starting_blend.size)..-1]  + word[0..starting_blend.size-1] + 'ay'
    elsif word[0].downcase.match(/[aeiou]/)
      word + 'way'
    else
      word[1..-1] + word[0] +'ay'
    end
  end

  def to_pig_latin(text)
    words = text.split
    words.collect{|word| piglatinize(word) }.join(" ")
  end
end
