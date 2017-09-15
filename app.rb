require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    plizer = PigLatinizer.new
    @pl_phrase = plizer.to_pig_latin(params[:user_phrase])
    erb :piglatinize
  end
end
