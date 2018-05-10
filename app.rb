require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    # @converted_text = PigLatinizer.new(params[:user_phrase])
    # erb :piglatinize
  end

end
