class PigLatinizer

  def piglatinize(word)
    arr = word.split("")
    if arr.length > 1
      arr.each_with_index do |c, i|
        if c.match(/[^aeiouAEIOU]/)
          arr.insert(-1, arr.delete_at(i))
          binding.pry
        else
          break
        end
      rescue
      end
      arr << "ay"
      arr.join
    else
      arr << "way"
      arr.join
    end

  end

end
