require 'pry'

class PigLatinizer

  def piglatinize(user_input)
    words = user_input.split(" ")
    latinarr = words.collect do |w|
      if w =~ /\A([aeiou])/i
        "#{w}way"
      else arr = w.split(/([aeiou].*)/i)
        "#{arr[1]}#{arr[0]}ay"
      end
    end
    latinarr.join(" ")
  end




end
