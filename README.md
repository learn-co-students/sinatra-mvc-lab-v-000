# Sinatra MVC Lab - Pig Latinizer

In this lab, you'll be building a **Pig Latinizer** using Sinatra and the MVC paradigm of app development. Pig Latin is a made-up language formed from English by transferring the initial consonant or consonant cluster of each word to the end of the word and adding a vocalic syllable. For example, noodle soup would be translated to oodlenay oupsay. 

Your app will take in a string from a user through a form, convert it to pig latin, and return the string to the user. Using the previous code-along as a guide, get the tests to pass by building out this application. Use the guide below to get you started!

## Instructions

1. Build a form to take user input in user_input.erb. Show that form using a `GET` request at `/`.

2. Create a `POST` method in your controller (`app.rb`) to receive your form's `params`.

3. Build a `PigLatinizer` model (in your models directory) that converts a string into pig latin.

4. In your application controller, create an instance of the `PigLatinizer` class to convert your user input to Pig Latin.

5. Use ERB within a new view to display the final pig latin string to the user.



<a href='https://en.wikipedia.org/wiki/Pig_Latin'>Pig Latin on wikipedia</a>

<p class='util--hide'>View <a href='https://learn.co/lessons/sinatra-mvc-lab'>Sinatra MVC Lab</a> on Learn.co and start learning to code for free.</p>


I am terrible: We start again.


class PigLatinizer
  attr_accessor :string 
  @@all = []
  
  def initiatlize(string=nil)
    @string = string 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  
  def piglatinize(string)
    string_array = string.split(" ")
    constants = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z']
    new_string = []
    vowels = ["a","e","i","o","u", "A", "E", "I", "O", "U"]
    
    if string_array.size == 1 
    
        if vowels.include?(string_array[0][0])
          return (string_array[0] + "way")
          
           elsif constants.include?(string_array[0][0]) & constants.include?(string_array[0][1]) & constants.include?(string_array[0][1])
                return (string_array[0][2..-1] + string_array[0][0..2] + "ay")
                
              elsif constants.include?(string_array[0][0]) & constants.include?(string_array[0][1]) & vowels.include?(string_array[0][2])
                return (string_array[0][3..-1] + string_array[0][0..2] + "ay")  
          
            elsif constants.include?(string_array[0][0]) & constants.include?(string_array[0][1]) 
              return (string_array[0][2..-1] + string_array[0][0..1] + "ay")
              
              elsif constants.include?(string_array[0][0]) & vowels.include?(string_array[0][1])
                return (string_array[0][1..-1] + string_array[0][0] + "ay")
              
          
        end 
     
      else string_array.map do |word|
          if vowels.include?(string_array[0][0])
            new_string << string_array[0] + "ay"
            elsif constants.include?(string_array[0][0]) & constants.include?(string_array[0][1]) 
              new_string << (string_array[0][2..-1] + string_array[0][0..1] + "ay")
              elsif constants.include?(string_array[0][0]) & vowels.include?(string_array[0][1])
                new_string << (string_array[0][1..-1] + string_array[0][0] + "ay")
          end
        end 
    end
  new_string.reduce
  binding.pry
  end 

end 
