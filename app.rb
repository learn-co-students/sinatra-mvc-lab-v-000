require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    #create a class instance of Model and pass user input to it
    @pig_latin = PigLatinizer.new.piglatinize(params[:user_phrase])
    #route to erb page that utilizes class instance and methods
    erb :pig_latinize
  end

end
