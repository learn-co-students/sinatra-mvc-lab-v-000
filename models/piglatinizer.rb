class PigLatinizer

    def piglatinize(string)
        letters = ('a'..'z').to_a
        vowels = %w[a e i o u A E I O U]
        consonants = letters - vowels
        word = string.split(" ")
        results = []

        word.each do |w| 
        if w.length == 1
            results << w + "way"
        elsif vowels.include?(w[0]) 
            results << w + "way"
        elsif consonants.include?(w[0].downcase) && consonants.include?(w[1]) && consonants.include?(w[2])
            results << w[3..-1] + w[0..2] + 'ay'
        elsif consonants.include?(w[0].downcase) && consonants.include?(w[1])
            results << w[2..-1] +w[0..1] + 'ay'
        elsif consonants.include?(w[0].downcase)
            results << w[1..-1] + w[0] + 'ay'
        else
            results << w 
        end
    end
    results.join(" ")
  end
end  