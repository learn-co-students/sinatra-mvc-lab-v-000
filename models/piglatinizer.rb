require 'pry'
class PigLatinizer

  def piglatinize(word)
    case word
    when /^[^aeiouAEIOU]/
      first_consonants = word[/^[^aeiouAEIOU]+/]
      word.gsub!(/^[^aeiouAEIOU]+/, "").insert(-1, "#{first_consonants}ay")
    when /^[aeiouAEIOU]/
      word.insert(-1, "way")
    end
  end

  def to_pig_latin(text)
    text.split(" ").map {|word| piglatinize(word)}.join(" ")
  end
  
end
