require 'pry'
class PigLatinizer

  def piglatinize(text)
    if !text.strip.include? " "

      if text.downcase[/\A[aeiou]/] != nil
        @latinizedword = text + 'way'
      elsif text.downcase[/\A[bcdfghjklmnpqrstvwxyz][bcdfghjklmnpqrstvwxyz][bcdfghjklmnpqrstvwxyz]/] != nil
        @latinizedword = text[3..-1] + text[0..2] + 'ay'
      elsif text.downcase[/\A[bcdfghjklmnpqrstvwxyz][bcdfghjklmnpqrstvwxyz]/] != nil
        @latinizedword = text[2..-1] + text[0..1] + 'ay'
      else
        @latinizedword = text[1..-1] + text[0] + 'ay'
      end

      else
      to_pig_latin(text)
    end
  end

  def to_pig_latin(text)
    @latinizedwords = []
    text.split.each do |word|
      if word.downcase[/\A[aeiou]/] != nil
        @latinizedwords << word + 'way'
      elsif word.downcase[/\A[bcdfghjklmnpqrstvwxyz][bcdfghjklmnpqrstvwxyz][bcdfghjklmnpqrstvwxyz]/] != nil
        @latinizedwords << word[3..-1] + word[0..2] + 'ay'
      elsif word.downcase[/\A[bcdfghjklmnpqrstvwxyz][bcdfghjklmnpqrstvwxyz]/] != nil
        @latinizedwords << word[2..-1] + word[0..1] + 'ay'
      else
        @latinizedwords << word[1..-1] + word[0] + 'ay'
      end
    end
    @latinizedwords.join(' ')
  end

end
