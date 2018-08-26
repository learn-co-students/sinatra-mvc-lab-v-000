require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/' do
    a = PigLatinizer.new
    @converted_text = a.piglatinize(params[:user_phrase])
    erb :piglatinize
  end

  post '/piglatinize' do
    a = PigLatinizer.new
    @converted_text = a.piglatinize(params[:user_phrase])
    erb :piglatinize

  end
end
