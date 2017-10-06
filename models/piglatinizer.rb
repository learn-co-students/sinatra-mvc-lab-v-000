
class PigLatinizer
  @@vowels = %w(a e i o u)
  def piglatinize (arg)
    if @@vowels.include?(arg.downcase[0])
      letter(arg)
    elsif arg.size > 1
      word(arg)
    end

  end


  def to_pig_latin(arg)
    arg = arg.split(" ")
    arg.collect{|word| self.piglatinize (word) }.join(" ")
  end

private

 def word(arg)
   arg = arg.split("")
     until @@vowels.include?(arg[0])
       arg<< arg[0]
       arg.shift
     end
  arg = arg.join
  ay(arg)
 end

 def letter(arg)
   arg << "w"
   ay(arg)
 end

 def ay(arg)
    arg << "a" << "y"
    arg
 end

end
