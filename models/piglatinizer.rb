class PigLatinizer
  attr_reader :text

  def piglatinize(word)
   vowels = "[a,e,i,o,u,A,E,I,O,U]"
   consonants = "[b,c,d,f,g,h,j,k,l,m,n,p,q,r,s,t,v,w,x,y,z,B,C,D,F,G,H,J,K,L,M,N,P,Q,R,S,T,V,W,X,Y,Z]"

   if word[0].match(vowels)
       word << "way"
   else
       new_word = ""
    while word[0].match(consonants)
        new_word << word.chars[0]
        word = word[1..-1]
    end
      word << new_word + "ay"
    end
  word
end

  def to_pig_latin(string)
    string.split.collect{|word| piglatinize(word)}.join(" ")
  end

end
