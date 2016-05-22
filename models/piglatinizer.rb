class PigLatinizer

  def piglatinize(x)
    if x.index(/[AEIOUaeiou]/)==0
      return x+"way"
    else
      return x[x.index(/[aeiouy]/)..-1]+x[0..(x.index(/[aeiouy]/)-1)]+"ay"
    end
  end

  def to_pig_latin(input)
    input.split(" ").map {|x| piglatinize(x)}.join(" ")
  end

end
