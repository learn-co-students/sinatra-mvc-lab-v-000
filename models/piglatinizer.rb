class PigLatinizer

  def piglatinize(input)
    input.split(" ").length == 1 ? piglatinize_term(input) : piglatinize_sentence(input)
  end

  private

  def consonant?(letters)
    letters.match(/[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]/)
  end

  def piglatinize_term(term)
 
    if !consonant?(term[0])
      term = term + "w"
   
    elsif consonant?(term[0]) && consonant?(term[1]) && consonant?(term[2])
      term = term.slice(3..-1) + term.slice(0,3)

    elsif consonant?(term[0]) && consonant?(term[1])
      term = term.slice(2..-1) + term.slice(0,2)

    else
      term = term.slice(1..-1) + term.slice(0)
    end
    term << "ay"
  end

  def piglatinize_sentence(sentence)
    sentence.split.collect { |term| piglatinize_term(term) }.join(" ")
  end




end
