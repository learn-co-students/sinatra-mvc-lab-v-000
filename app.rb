require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
   200
   erb :user_input
  end

  post '/piglatinize' do
    200
    
  end

end
