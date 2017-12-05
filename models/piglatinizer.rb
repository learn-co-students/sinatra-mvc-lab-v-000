class PigLatinizer


  def initialize

  end

  def piglatinize(user_input)

    array = user_input.split("")
    new_array = []
    counter = 0
    result = ""
    string = ""
    temp = ""
    i = 0
    array.each do |letter|
      new_array[i] = array[i]
      i = i + 1
    end


    if array.count == 1
      if array[0].upcase == 'A' || array[0].upcase == 'E' || array[0].upcase == 'I' || array[0].upcase == 'O' || array[0].upcase == 'U'
        result = array[0] +"w"
      else
        result = array[0]
      end

    else
      checker = 0


      array.each do |letter|
        temp = ""

        if letter.upcase != 'A' && letter.upcase != 'E' && letter.upcase != 'I' && letter.upcase != 'O' && letter.upcase != 'U' && checker == 0
          #binding.pry

          new_array << letter
          new_array.shift
          counter = counter + 1

        else
          checker = 1


        end #if

      end #array
        result= new_array.join("")
        if counter == 0
          result = result +"w"
        end
    end #if

        result = result + "ay"


        #binding.pry
  end
  def to_pig_latin(user_input)
    array = user_input.split(" ")

    new_array = []
      if array.size == 1
        piglatinize(user_input)
      else
        array.each do |word|
          new_array << piglatinize(word)
          #binding.pry
        end
        new_array.join(" ")
      end
  end


end
