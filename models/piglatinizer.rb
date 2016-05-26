require 'pry'
class PigLatinizer

  def piglatinize(str)
    vowels = %w[a e i o u]
    arr = str.split('')
    if vowels.include?(str[0].downcase)
      str << "way"
    else
      while !vowels.include?(arr[0])
        arr.rotate!
        # binding.pry
      end
      arr.join("") << "ay"
    end
  end

  def to_pig_latin(words)
    words_array = words.split(" ")
    words_array.map do |word|
        piglatinize(word)
        # binding.pry
    end.join(" ")
  end
end
