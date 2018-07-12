require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base
  
  get '/' do
    erb :index
  end 
  
  post '/piglatinize' do
    pl_obj = PigLatinizer.new 
    
    @piglatinized = pl_obj.piglatinize(params[:user_phrase])
    
    erb :piglatinize
  end
  
end