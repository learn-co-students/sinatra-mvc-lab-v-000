require_relative 'config/environment'
require_relative "models/piglatinizer.rb"


class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @text_from_user = params[:user_phrase]
    @pignized_text = PigLatinizer.new
    erb :piglatinize
  end

end
