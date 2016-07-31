require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

  post '/piglatinize' do
    @user_input = PigLatinize.new(params[:user_phrase])
    erb :translated
  end

end
