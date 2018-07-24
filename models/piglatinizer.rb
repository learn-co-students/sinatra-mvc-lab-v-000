binding.pry
class PigLatinizer

  def piglatinize(word)
    binding.pry
    if word.include?("/\A+[bcdfghjklmnpqrstvwxyz]/")
      arr = word.drop(1)
      arr << word[0]
      "#{arr}ay"
      binding.pry
    end
  end
end
