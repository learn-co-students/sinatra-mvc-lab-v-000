class PigLatinizer
  def initialize
  end

  def piglatinize(string)
    string = string.gsub(/[.]/,"")
    unless (string.length < 2) || (string == 'an') || (string == 'in') || (string == 'and')
      arr = string.chars
      while !(['a', 'e', 'i', 'o', 'u'].include?(arr[0])) 
        cons = arr.shift
        arr << cons
      end
      arr << "ay"
      arr.join
    else
      string
    end
  end

  def to_pig_latin(string)
    # binding.pry
    string.split(" ").map do |word|
      piglatinize(word)
    end.join(" ")
  end
end

 # "eOncay uponay a imetay and a eryvay oodgay imetay itay asway erethay asway a oocowmay omingcay ownday alongay ethay oadray and isthay oocowmay atthay asway omingcay ownday alongay ethay oadray etmay a icensnay ittlelay oybay amednay abybay uckoo.tay" to include 
 # "eOncay uponay a imetay and a eryvay oodgay imetay itay asway erethay asway a oocowmay omingcay ownday alongay ethay oadray and isthay oocowmay atthay asway omingcay ownday alongay ethay oadray etmay a icensnay ittlelay oybay amednay abybay uckootay"