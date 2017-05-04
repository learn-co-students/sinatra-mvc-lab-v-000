
class PigLatinizer

	def piglatinize(word)
		werd = word.split
		alpha = ('a'..'z').to_a
		upcase_alpha = ('A'..'Z').to_a
		vowels = %w[a e i o u]
		upcase_vowels = %w[A E I O U]
		consonants = alpha - vowels
		phenomes = ["I", "me", "to", "too", "a", "an", "in", "and", "on"]

	  if vowels.include?(word[0]) || upcase_vowels.include?(word[0])
	    word + 'way'
		elsif consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2])
			word[3..-1] + word[0..2] + 'ay'
		elsif upcase_alpha.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2])
			word[3..-1] + word[0..2] + 'ay'
	  elsif consonants.include?(word[0]) && consonants.include?(word[1])
	    word[2..-1] + word[0..1] + 'ay'
	  elsif phenomes.include?(word)
			return werd.join + "way"
	  else consonants.include?(word[0])
	    word[1..-1] + word[0..0] + 'ay'
	  end
	end

	def to_pig_latin(string)
	  string.split.collect{|word| piglatinize(word)}.join(" ")
	end

end
# a	b	c	d	e	f	g	h	i	j	k	l	m	n	o	p	q	r	s	t	u	v	w	x	y	z
