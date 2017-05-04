class PigLatinizer

  def initialize
  end

  def piglatinize(ay)
    vowels = %w{ a e i o u A E I O U }
    ay = ay.split(//)
    temp = []
    if vowels.include?(ay[0])
      ay << "w"
    end
    until vowels.include?(ay[0])
      temp << ay.shift
    end
    temp << ["a", "y"]
    ay << temp
    ay.join('')
  end

  def to_pig_latin(words)
    words = words.split(" ")
    words.map{|i| self.piglatinize(i)}.join(" ")
  end
end
