class PigLatinizer

  def piglatinize(string)
    words = string.split(' ')  

    words.map do |word|
      prefix = word.match(/^[^aeiouAEIOU]+/)

      mod_word = ""
      
      if prefix
        mod_word = word.sub(/^#{prefix}/, '')
        mod_word.sub!('.', '') if word.end_with?('.')
        mod_word += "#{prefix}ay"
        mod_word += '.' if word.end_with?('.')
        mod_word
      else
        mod_word = word + "way"
        mod_word
      end

      # if word == word.capitalize
      #   mod_word.capitalize!
      # end

      mod_word
    end.join(' ')
  end
  
end
