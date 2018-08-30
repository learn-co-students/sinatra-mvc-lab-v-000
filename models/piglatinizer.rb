class PigLatinizer
  
  def piglatinize(user_phrase)
  user_phrase = user_phrase.split(" ")
  user_phrase.each_with_index do |phrase, index|
    if phrase[0].downcase =~ /[aeiou]/ 
      user_phrase[index] = phrase + "way"
    else
      beginning = ""
      count = 0
      phrase.split('').each do |letter|
        if letter.downcase !~ /[aeiou]/
          beginning += letter
          count += 1
        else
          break
        end
      end
      user_phrase[index] = phrase[count..(phrase.length-1)] + beginning + "ay"
    end
  end
  user_phrase.join(" ")
end
  
end