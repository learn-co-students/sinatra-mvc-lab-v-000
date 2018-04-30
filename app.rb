require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @pig_latin = PigLatinizer.new
    @pig_latinized = @pig_latin.piglatinize(params[:user_phrase])
    erb :pig_latin
  end
end
