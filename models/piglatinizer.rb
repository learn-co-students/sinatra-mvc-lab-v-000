class PigLatinizer
  attr_reader :phrase

  def initialize()
    self
  end
  

  def piglatinize(phrase)
    @words = phrase.split(" ")
    @piglatinized = ""
    
    @words.each do |e|
      if e=~ /\A[^aeiouAEIOU]/ && e[1..-1] =~ /\A[aeiouAEIOU]/
        @piglatinized += e[1..-1]+e[0]+"ay"+" "
      elsif e=~ /\A[^aeiouAEIOU]/ && e[1..-1] =~ /\A[^aeiouAEIOU]/ && e[2..-1] =~ /\A[aeiouAEIOU]/
        @piglatinized += e[2..-1]+e[0..1]+"ay"+" "
      elsif e=~ /\A[^aeiouAEIOU]/ && e[1..-1] =~ /\A[^aeiouAEIOU]/ && e[2..-1] =~ /\A[^aeiouAEIOU]/ && e[3..-1] =~ /\A[aeiouAEIOU]/
        @piglatinized += e[3..-1]+e[0..2]+"ay"+" "
      else
        @piglatinized += e + "way"+" "
      end
    end
    @piglatinized[0..-2]
  end
      

  
  
end