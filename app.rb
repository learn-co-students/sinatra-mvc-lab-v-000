require_relative 'config/environment'

class App < Sinatra::Base

#get is post office
  get'/' do
    erb :user_input
      end

#post is mailman
  post'/'do
  binding.pry
    erb :user_input
  end
end
