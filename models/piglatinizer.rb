class PigLatinizer

  def initialize
    blends = %w(bl br ch d cr dr fl fr gl gr pl pr sc sh sk sl sm sn sp st sw th tr tw wh wr sch scr shr sph spl spr squ str thr)
    @blends = blends + blends.map { |word| word.capitalize }
    @vowels = %w(a e i o u A E I O U)
  end

  def piglatinize(words)
    words.split(" ").map { |word| single(word) }.join(" ")
  end

  def single(word)
    if word.size == 1 || @vowels.include?(word[0])
      word << "way"
    elsif @blends.include?(word[0..2])
      word << word.slice!(0..2) << "ay"
    elsif @blends.include?(word[0..1])
      word << word.slice!(0..1) << "ay"
    else
      word << word.slice!(0) << "ay"
    end

  end
end
