# Sinatra MVC Lab - Pig Latinizer

In this lab, you'll be building a **Pig Latinizer** using Sinatra and the MVC paradigm of app development. Your app will take in a string from a user through a form, convert it to pig latin, and return the string to the user. Using the previous code-along as a guide, get the tests to pass by building out this application. Use the guide below to get you started!

## Instructions

1. Build a form to take user input in user_input.erb. Show that form using a `GET` request at `/`.

2. Create a `POST` method in your controller (`app.rb`) to receive your form's `params`.

3. Build a `PigLatinize` model (in your models directory) that converts a string into pig latin.

4. In your application controller, create an instance of the `PigLatinize` class to convert your user input to Pig Latin.

5. Use ERB within a new view to display the final pig latin string to the user.



<a href='https://en.wikipedia.org/wiki/Pig_Latin'>Pig Latin on wikipedia</a>

<p data-visibility='hidden'>View <a href='https://learn.co/lessons/sinatra-mvc-lab' title='Sinatra MVC Lab - Pig Latinizer'>Sinatra MVC Lab - Pig Latinizer</a> on Learn.co and start learning to code for free.</p>


def piglatinize(word)
    arr = word.scan /\w/
    
    if arr[0].downcase == 'a' || arr[0].downcase == 'e' || arr[0].downcase == 'i' || arr[0].downcase == 'o' || arr[0].downcase == 'u'

      arr << "w"
      arr << "a"
      arr << "y"
      
    else 
      arr << "a"
      arr << "y"
      arr.insert(-3, arr.delete_at(0))
      
    end 

    arr.join 
  end 