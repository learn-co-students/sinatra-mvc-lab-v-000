require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/' do
    @pig_latinized_text = PigLatinizer.new.piglatinize(params[:user_phrase])
    erb :translation
  end

  get '/piglatinize' do
    erb :user_input
  end

  post '/piglatinize' do
    @pig_latinized_text = PigLatinizer.new.to_pig_latin(params[:user_phrase])
    erb :translation
  end
end
