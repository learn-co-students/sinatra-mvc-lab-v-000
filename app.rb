require_relative 'config/environment'

# Your app will take in a string from a user through a form, convert it to pig latin, and return the string to the user.
#  Using the previous code-along as a guide, get the tests to pass by building out this application. Use the guide below
#   to get you started!

class App < Sinatra::Base
  get '/' do #accesses ? and renders user_input.erb file, where form is
    erb :user_input
  end

  post '/piglatinize' do
    pl = PigLatinizer.new
    @piglatin = pl.to_pig_latin(params[:user_phrase])
    erb :results
  end
end
