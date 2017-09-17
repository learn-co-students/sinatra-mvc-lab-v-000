class PigLatinizer


  def piglatinize(word)

    vowels = %w{a e i o u A E I O U}
    list = word.chars

    if list[0] == "q" && list[1] == "u"
      list << "quay"
      list.delete_at(0)
      list.delete_at(0)
    elsif list[0..2] == %w{s q u}
      list << list[0..2]
      list << "ay"
      list.delete_at(0)
      list.delete_at(0)
      list.delete_at(0)
    elsif vowels.include?(list[0])
      list << "way"
    elsif vowels.include?(list[1]) && !vowels.include?(list[0])
      list << list[0]
      list << "ay"
      list.delete_at(0)
    elsif vowels.include?(list[2]) && !vowels.include?(list[0..1])
      list << list[0..1]
      list << "ay"
      list.delete_at(0)
      list.delete_at(0)
    elsif !vowels.include?(list[0..2])
      list << list[0..2]
      list << "ay"
      list.delete_at(0)
      list.delete_at(0)
      list.delete_at(0)
    end
    return list.join
  end


  def to_pig_latin(sentence)
    array = sentence.split
    new_array = []
    i = 0
    while i < array.length
      new_array << piglatinize(array[i])
      i += 1
    end
    return new_array.join(" ")
  end


end
