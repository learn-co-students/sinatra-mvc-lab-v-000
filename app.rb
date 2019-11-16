require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do
    erb :index
  end

  post '/piglatinize' do
    pig_latinizer = PigLatinizer.new
    
    @pig_text = pig_latinizer.piglatinize(params[:user_phrase])
    erb :piglatinize
  end
end
