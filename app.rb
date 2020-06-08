require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    #instatiate new piglatinier object and convert phrase in params
    hazer_i = PigLatinizer.new
    @hazer_phrase = hazer_i.to_pig_latin(params[:user_phrase])

    erb :view_phrase
  end
end
