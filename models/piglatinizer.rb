require 'pry'
class PigLatinizer

  def piglatinize(word)
      tmp_arr = word.scan(/\w/)
      if word.match(/\A[aeiou]/i)
        tmp_arr << "way"

      else
        index = word.index(/[aeiou]/i)
        f_part = tmp_arr.shift(index)
        tmp_arr << f_part
        tmp_arr << "ay"

      end
      tmp_arr.join

  end


  def to_pig_latin(words)

    words_a = words.split(/\s/)
    words_a.collect do |word|
      piglatinize(word)
    end.join(' ')

  end

end

#n = PigLatinizer.new
#binding.pry
#n.piglatinize("Spray")
