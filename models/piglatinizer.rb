
class PigLatinizer
  @@vowels = %w(a e i o u)

  def piglatinize (arg)
      @arg = arg
    if @arg.include?(" ")
      to_pig_latin(@arg)
    elsif @@vowels.include?(@arg.downcase[0])
      letter(@arg)
      ay(@arg)
    elsif @arg.size > 1
      word(@arg)
      ay(@arg)
    end
   @arg
  end

  def to_pig_latin(arg)
    @arg = arg
    @arg = @arg.split(" ")
     @arg = @arg.collect{|word| self.piglatinize (word) }.join(" ")
     @arg
  end

private

 def word(arg)
   @arg = @arg.split("")
     until @@vowels.include?(@arg[0])
       @arg<< @arg[0]
       @arg.shift
     end
  @arg = @arg.join
 end

 def letter(arg)
   @arg << "w"
 end

 def ay(arg)
    @arg << "a" << "y"
 end

end
