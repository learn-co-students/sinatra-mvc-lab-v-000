class PigLatinizer


  def piglatinize(word)
    words=word.split(" ")
    words.each do |x|
      if x.downcase.start_with?('a','e','i','o','u')
        x << ("way")
      elsif ["a","e","i","o","u"].include?x[0,1]
        x << ("ay")
      elsif x.downcase.start_with?('a','e','i','o','u')
        x << ("way")
      else
        until ["a","e","i","o","u"].include?x[0,1]
          x << ("#{x[0,1]}")
          x[0,1]=""
        end
        x << "ay"
      end
    end
    words.join(" ")
  end


end
