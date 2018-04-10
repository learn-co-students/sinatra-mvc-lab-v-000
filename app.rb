require_relative 'config/environment'

class App < Sinatra::Base

#get is post office
  get'/' do
    erb :user_input
      end

#post is mailman
  post'/piglatinize'do
   new_phrase = PigLatinizer.new
   @piglatinize = new_phrase.to_pig_latin(params[:user_phrase])
    erb :user_input

  end
end
