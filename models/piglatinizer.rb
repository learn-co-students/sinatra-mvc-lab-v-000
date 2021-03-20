require "pry"

class PigLatinizer

  def piglatinize(str)
    alpha = ('a'..'z').to_a
    vowels = %w[a e i o u A E I O U]
    consonants = alpha - vowels
    words = str.split(" ")
    results = []
    
    words.each do |x|
      if x.length == 1 
        results << x + 'way'
      elsif vowels.include?(x[0])
        results << x + 'way'
      elsif consonants.include?(x[0].downcase) && consonants.include?(x[1]) && consonants.include?(x[2])
        results << x[3..-1] + x[0..2] + 'ay'
      elsif consonants.include?(x[0].downcase) && consonants.include?(x[1])
        results << x[2..-1] + x[0..1] + 'ay'
      elsif consonants.include?(x[0].downcase)
        results << x[1..-1] + x[0] + 'ay'
      else
        results << x # return unchanged
      end
    end
    results.join(" ")
  end
end 