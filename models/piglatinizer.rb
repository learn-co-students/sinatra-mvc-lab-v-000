
class PigLatinizer

  def piglatinize(word)
    arr = word.scan /\w/
    
    if arr.count == 1 || (arr[0].downcase == 'a' || arr[0].downcase == 'e' || arr[0].downcase == 'i' || arr[0].downcase == 'o' || arr[0].downcase == 'u')  
      arr << "w"
      arr << "a"
      arr << "y"

    elsif (arr[-2].downcase == "a") && (arr[-1].downcase == "y")
      arr.unshift("y") 
      arr.unshift("a")
      
    elsif (arr[1].downcase == 'a' || arr[1].downcase == 'e' || arr[1].downcase == 'i' || arr[1].downcase == 'o' || arr[1].downcase == 'u') 
      arr << "a"
      arr << "y"
      arr.insert(-3, arr.delete_at(0))
     
    
    elsif (arr[2].downcase == 'a' || arr[2].downcase == 'e' || arr[2].downcase == 'i' || arr[2].downcase == 'o' || arr[2].downcase == 'u') 
      arr << "a"
      arr << "y"
      arr.insert(-3, arr.delete_at(0))
      arr.insert(-3, arr.delete_at(0))
      
    elsif arr[3] == 'e' && arr[4] == "a"
      arr << "a"
      arr << "y"
      arr.insert(-3, arr.delete_at(0))
      arr.insert(-3, arr.delete_at(0))
      arr.insert(-3, arr.delete_at(0))

    else  
      arr << "a"
      arr << "y"
      arr.insert(-3, arr.delete_at(0))
      
    end 
    arr.join 
  end 

  def to_pig_latin(text)
    arr = text.split(" ")
    new_arr = []
    num = 1

    while num <= arr.size
      new_arr[num-1] = piglatinize(arr[num-1])
      num +=1
    end 

    new_arr.join(" ")
  end 
end 

