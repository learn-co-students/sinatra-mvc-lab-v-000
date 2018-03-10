class PigLatinizer

  def piglatinize(text)
    array_text = text.split("")
    if "aeiouAEIOU".include?(array_text.first)
      array_text.push("way").join("")
    elsif "aeiouAEIOU".include?(array_text[1])
      first_letter = array_text.shift
      array_text.push(first_letter)
      array_text.push("ay")
      array_text.join("")
    elsif "aeiouAEIOU".include?(array_text[2])
      first_letter = array_text.shift
      second_letter = array_text.shift
      array_text.push(first_letter)
      array_text.push(second_letter)
      array_text.push("ay")
      array_text.join("")
    elsif "aeiouAEIOU".include?(array_text[3])
      first_letter = array_text.shift
      second_letter = array_text.shift
      third_letter = array_text.shift
      array_text.push(first_letter)
      array_text.push(second_letter)
      array_text.push(third_letter)
      array_text.push("ay")
      array_text.join("")
    end 
  end

  def to_pig_latin(sentence)
    array_of_words = sentence.split(" ")
    piglatinized_array = array_of_words.collect do |x|
      #if I run piglatinize on instancs of this class, what is the object I'm running it on now and why can I do it?
      piglatinize(x)
    end
    piglatinized_array.join(" ")
  end
end
